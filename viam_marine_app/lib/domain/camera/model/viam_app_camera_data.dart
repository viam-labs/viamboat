import 'package:equatable/equatable.dart';

class ViamAppCameraData extends Equatable {
  final String mimeType;
  final List<int> image;

  const ViamAppCameraData(
    this.mimeType,
    this.image,
  );

  @override
  List<Object?> get props => [
        mimeType,
        image,
      ];
}
