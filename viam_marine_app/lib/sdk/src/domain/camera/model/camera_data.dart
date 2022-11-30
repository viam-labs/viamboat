//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';

class ViamCameraData {
  final String mimeType;
  final List<int> image;
  final Int64 widthPx;
  final Int64 heightPx;

  const ViamCameraData(
    this.mimeType,
    this.image,
    this.widthPx,
    this.heightPx,
  );

  @override
  bool operator ==(covariant ViamCameraData other) =>
      other.mimeType == mimeType && other.image == image && other.widthPx == widthPx && other.heightPx == heightPx;

  @override
  int get hashCode => Object.hash(
        mimeType,
        image,
        widthPx,
        heightPx,
      );
}
