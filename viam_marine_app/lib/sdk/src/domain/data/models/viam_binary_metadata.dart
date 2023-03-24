import 'package:viam_marine/sdk/src/domain/data/models/viam_capture_metadata.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';

class ViamBinaryMetadata {
  final String id;
  final ViamCaptureMetadata captureMetadata;
  final DateTime timeRequested;
  final DateTime timeReceived;
  final String fileName;
  final String fileExt;
  final String uri;

  const ViamBinaryMetadata(
    this.id,
    this.captureMetadata,
    this.timeReceived,
    this.timeRequested,
    this.fileName,
    this.fileExt,
    this.uri,
  );
}

extension ViamBinaryMetadataMapper on BinaryMetadata {
  ViamBinaryMetadata toDomain() => ViamBinaryMetadata(
        id,
        captureMetadata.toDomain(),
        timeRequested.toDateTime(),
        timeReceived.toDateTime(),
        fileName,
        fileExt,
        uri,
      );
}
