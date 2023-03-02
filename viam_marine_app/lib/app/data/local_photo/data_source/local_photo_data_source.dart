import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

const photoCompressionQuality = 80;

@injectable
class LocalPhotoDataSource {
  final ImagePicker _imagePicker;
  final FilePicker _filePicker;

  LocalPhotoDataSource(
    this._imagePicker,
    this._filePicker,
  );

  Future<File?> pickPhoto() async {
    final result = await _filePicker.pickFiles(type: FileType.image);
    if (result == null || result.files.isEmpty || result.files.single.path == null) {
      return null;
    }
    final file = File(result.files.single.path!);
    return file;
  }

  Future<File?> capturePhoto() async {
    final result = await _imagePicker.pickImage(source: ImageSource.camera, imageQuality: photoCompressionQuality);
    if (result == null) {
      return null;
    }

    final file = File(result.path);
    return file;
  }
}
