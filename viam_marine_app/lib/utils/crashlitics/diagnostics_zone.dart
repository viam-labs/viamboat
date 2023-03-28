import 'package:fimber_io/fimber_io.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class DiagnosticsLogTree extends LogTree {
  @override
  List<String> getLevels() => CustomFormatTree.defaultLevels;

  @override
  void log(String level, String message, {String? tag, ex, StackTrace? stacktrace}) {
    if (ex == null) return;
    FirebaseCrashlytics.instance.recordError(
      ex,
      stacktrace,
      reason: message,
      fatal: false,
    );
  }
}
