class ViamCameraFrameData {
  final String mimeType;
  final List<int> image;

  const ViamCameraFrameData(
    this.mimeType,
    this.image,
  );

  @override
  bool operator ==(covariant ViamCameraFrameData other) => other.mimeType == mimeType && other.image == image;

  @override
  int get hashCode => Object.hash(
        mimeType,
        image,
      );
}
