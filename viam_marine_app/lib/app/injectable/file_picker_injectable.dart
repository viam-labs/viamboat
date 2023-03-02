import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FilePickerModule {
  FilePicker get filePicker => FilePicker.platform;
}
