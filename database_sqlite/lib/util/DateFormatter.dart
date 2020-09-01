import 'package:intl/intl.dart';

String dateFormatted() {
  var now = DateTime.now();
  var formatter = new DateFormat().add_yMd().add_jm();
  String formatDate = formatter.format(now);
  return formatDate;
}
