//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';

class ViamAppCameraData {
  final String mimeType;
  final List<int> image;
  final Int64 widthPx;
  final Int64 heightPx;

  const ViamAppCameraData(
    this.mimeType,
    this.image,
    this.widthPx,
    this.heightPx,
  );
}
