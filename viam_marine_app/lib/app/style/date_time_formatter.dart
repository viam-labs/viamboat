import 'package:intl/intl.dart';

final DateFormat _dateHourFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

class DateTimeFormatter {
  DateTimeFormatter._();

  static String dateToYearMonthDayHour(DateTime date) => _dateHourFormat.format(date);
}
