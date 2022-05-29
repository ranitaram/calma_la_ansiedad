import 'dart:io';

import 'package:file_picker/file_picker.dart';

class MediaService {
  MediaService() {}

  Future<PlatformFile?> pickImageFromLibrary() async {
    FilePickerResult? _result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    print(
        '$_result////////////////////////////////////////////////HHHHHHHHHHHHHHH////////////');
    if (_result != null) {
      return
          // _result  = File(_result.files.single.path);
          _result.files[0];
    }
    return null;
  }
}
