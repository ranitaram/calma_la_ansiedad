import 'dart:async';

//packages
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

//services
import '../services/database_service.dart';
import '../services/cloud_storage_service.dart';
import '../services/media_service.dart';
import '../services/navigation_services.dart';

//providers
import '../providers/authentication_provider.dart';

//models
import '../models/chat_message.dart';

class ChatPageProvider extends ChangeNotifier {
  late DatabaseService _db;
  late CloudStorageService _storage;
  late MediaService _media;
  late NavigationServices _navigation;

  final AuthenticationProvider _auth;
  final ScrollController _messagesListViewController;

  final String _chatId;
  List<ChatMessage>? messages;

  late StreamSubscription _messagesStream;

  String? _message;

  String get message => _message!;
  set message(String _value) {
    _message = _value;
    print(_message);
  }

  // String get message {
  //   return message;
  // }

  // set message(String _value) {
  //   _message = _value;
  //   print(_message);
  // }

  ChatPageProvider(this._chatId, this._auth, this._messagesListViewController) {
    _db = GetIt.instance.get<DatabaseService>();
    _storage = GetIt.instance.get<CloudStorageService>();
    _media = GetIt.instance.get<MediaService>();
    _navigation = GetIt.instance.get<NavigationServices>();
    listenToMessages();
  }
  @override
  void dispose() {
    _messagesStream.cancel();
    super.dispose();
  }

  void listenToMessages() {
    try {
      _messagesStream = _db.streamMessagesForChat(_chatId).listen((_snapshot) {
        List<ChatMessage> _messages = _snapshot.docs.map((_m) {
          Map<String, dynamic> _messageData = _m.data() as Map<String, dynamic>;
          return ChatMessage.fromJson(_messageData);
        }).toList();
        messages = _messages;
        print(messages);
        notifyListeners();
        // _messagesListViewController
        //     .jumpTo(_messagesListViewController.position.maxScrollExtent);
        //add scroll to bottom call
      });
    } catch (e) {
      print(e);
    }
  }

  void sendTextMessage() {
    if (_message != null) {
      //Entonces, dentro de nuestro botón de enviar mensaje de texto, ya sabemos que buscamos este mensaje.
      print(_message);
      ChatMessage _messageToSend = ChatMessage(
          senderID: _auth.user.uid,
          type: MessageType.TEXT,
          content: _message!,
          sentTime: DateTime.now());
      _db.addMessageToChat(_chatId, _messageToSend);
    }
  }

  void sendImageMessage() async {
    try {
      PlatformFile? _file = await _media.pickImageFromLibrary();
      if (_file != null) {
        String? _downloadURL = await _storage.saveChatImageToStorage(
            _chatId, _auth.user.uid, _file);
        ChatMessage _messageToSend = ChatMessage(
          content: _downloadURL!,
          type: MessageType.IMAGE,
          senderID: _auth.user.uid,
          sentTime: DateTime.now(),
        );
        _db.addMessageToChat(_chatId, _messageToSend);
      }
    } catch (e) {
      print("Error sending image message.");
      print(e);
    }
  }

  void deleteChat() {
    goBack();
    _db.deleteChat(_chatId);
  }

  void goBack() {
    _navigation.goBack();
  }
}
