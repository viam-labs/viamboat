import 'package:intl/intl.dart';

final DateFormat _dateHourFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

final DateFormat _dateYearMonthDayFormat = DateFormat('yyyy-MM-dd');

final DateFormat _hourFormat = DateFormat('HH:mm');

class DateTimeFormatter {
  DateTimeFormatter._();

  static String dateToYearMonthDayHour(DateTime date) => _dateHourFormat.format(date);

  static String dateToYearMonthDay(DateTime date) => _dateYearMonthDayFormat.format(date);

  static String hourFromDate(DateTime date) => _hourFormat.format(date);
}
