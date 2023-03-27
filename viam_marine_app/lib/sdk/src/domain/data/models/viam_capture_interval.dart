import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';
import 'package:viam_marine/sdk/src/gen/google/protobuf/timestamp.pb.dart';

class ViamCaptureInterval {
  final DateTime? start;
  final DateTime? end;

  const ViamCaptureInterval({this.start, this.end});
}

extension CaptureIntervalMapper on ViamCaptureInterval {
  CaptureInterval toDto() => CaptureInterval(
        start: start != null ? Timestamp.fromDateTime(start!) : null,
        end: end != null ? Timestamp.fromDateTime(end!) : null,
      );
}
