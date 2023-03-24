import 'package:viam_marine/sdk/src/domain/data/models/viam_binary_metadata.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';

class ViamBinaryData {
  final List<int> binary;
  final ViamBinaryMetadata metadata;

  const ViamBinaryData(this.binary, this.metadata);
}

extension ViamBinaryDataMapper on BinaryData {
  ViamBinaryData toDomain() => ViamBinaryData(
        binary,
        metadata.toDomain(),
      );
}
