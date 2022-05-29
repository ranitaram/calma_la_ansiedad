import 'dart:io';

//Packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

const String USER_COLLECTION = "Users";

class CloudStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  CloudStorageService() {}

  Future<String?> saveUserImageToStorage(
      String _uid, PlatformFile _file) async {
    try {
      //Lo primero que tengo que hacer es que tengo que obtener una referencia a la ubicación y donde quiero almacenar mi imagen.
      //tengo la carpeta UID para este usuario específico dentro de la cual tendrá la imagen de perfil seguida de su extensión

      Reference _ref =
          _storage.ref().child('images/users/$_uid/profile.${_file.extension}');
      // Entonces, ahora que tenemos una referencia, lo que podemos hacer es que ahora podemos crear una tarea o una operación que puede cargar por defecto para nosotros.
      /* Para eso, lo que haré es crear una nueva variable, que será y el tipo de tarea de carga nombrará una tarea, y la estableceré igual a nuestro archivo de puntos de referencia.
          Entonces, lo que esto va a hacer es que, sea cual sea la dirección especificada que hayamos especificado, tomará el archivo que le demos y lo cargará en el bosque o en el almacenamiento. Así que voy a enviar el archivo allí.  */

      UploadTask _task = _ref.putFile(
        File(_file.path),
      );
      return await _task.then(
        (_result) => _result.ref.getDownloadURL(),
      );
    } catch (e) {
      print(e);
    }
  }

  Future<String?> saveChatImageToStorage(
      String _chatID, String _userID, PlatformFile _file) async {
    try {
      Reference _ref = _storage.ref().child(
          'images/chats/$_chatID/${_userID}_${Timestamp.now().millisecondsSinceEpoch}.${_file.extension}');
      UploadTask _task = _ref.putFile(
        File(_file.path),
      );
      return await _task.then(
        (_result) => _result.ref.getDownloadURL(),
      );
    } catch (e) {
      print(e);
    }
  }
}
