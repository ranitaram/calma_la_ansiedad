//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//widgets
import '../widgets/top_bar.dart';
import '../widgets/custom_list_view_tiles.dart';
import '../widgets/custom_input_fields.dart';

//models
import '../models/chat.dart';
import '../models/chat_message.dart';

//providers
import '../providers/authentication_provider.dart';

class ChatPage extends StatefulWidget {
  final Chat chat;

  ChatPage({required this.chat});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;

  late GlobalKey<FormState> _messageFormState;
  late ScrollController _messageListViewController;

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  _buildUI() {
    return Scaffold();
  }
}
