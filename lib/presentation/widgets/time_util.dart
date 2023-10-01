import 'package:intl/intl.dart';

enum TimeAgoMessages {
  lessThanOneMinute,
  aboutAMinute,
  minutes,
  aboutAnHour,
  hours,
  aDay,
  days,
  aboutAMonth,
  months,
  aboutAYear,
  years,
}

extension TimeAgo on int {
  (TimeAgoMessages, int) timeAgo() {
    var elapsed = DateTime.now().millisecondsSinceEpoch - this;
    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;
    final num months = days / 30;
    final num years = days / 365;
    if (seconds < 45) {
      return (TimeAgoMessages.lessThanOneMinute, seconds.round());
    } else if (seconds < 90) {
      return (TimeAgoMessages.aboutAMinute, minutes.round());
    } else if (minutes < 45) {
      return (TimeAgoMessages.minutes, minutes.round());
    } else if (minutes < 90) {
      return (TimeAgoMessages.aboutAnHour, minutes.round());
    } else if (hours < 24) {
      return (TimeAgoMessages.hours, hours.round());
    } else if (hours < 48) {
      return (TimeAgoMessages.aDay, hours.round());
    } else if (days < 30) {
      return (TimeAgoMessages.days, days.round());
    } else if (days < 60) {
      return (TimeAgoMessages.aboutAMonth, days.round());
    } else if (days < 365) {
      return (TimeAgoMessages.months, months.round());
    } else if (years < 2) {
      return (TimeAgoMessages.aboutAYear, months.round());
    } else {
      return (TimeAgoMessages.years, years.round());
    }
  }
}
