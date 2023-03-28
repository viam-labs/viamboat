import 'package:intl/intl.dart';

extension IsInt on String {
  bool canParseToInt() => int.tryParse(this) != null;
}

extension StringExtension on String {
  String capitalizeFirstLetter() => toBeginningOfSentenceCase(this)!;
}
