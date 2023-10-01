import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

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
  String getTimeAgo(BuildContext context) {
    var elapsed = DateTime.now().millisecondsSinceEpoch - this;
    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;
    final num months = days / 30;
    final num years = days / 365;
    TimeAgoMessages timeAgo;
    int time;

    if (seconds < 45) {
      timeAgo = TimeAgoMessages.lessThanOneMinute;
      time = seconds.round();
    } else if (seconds < 90) {
      timeAgo = TimeAgoMessages.aboutAMinute;
      time = minutes.round();
    } else if (minutes < 45) {
      timeAgo = TimeAgoMessages.minutes;
      time = minutes.round();
    } else if (minutes < 90) {
      timeAgo = TimeAgoMessages.aboutAnHour;
      time = minutes.round();
    } else if (hours < 24) {
      timeAgo = TimeAgoMessages.hours;
      time = hours.round();
    } else if (hours < 48) {
      timeAgo = TimeAgoMessages.aDay;
      time = hours.round();
    } else if (days < 30) {
      timeAgo = TimeAgoMessages.days;
      time = days.round();
    } else if (days < 60) {
      timeAgo = TimeAgoMessages.aboutAMonth;
      time = days.round();
    } else if (days < 365) {
      timeAgo = TimeAgoMessages.months;
      time = months.round();
    } else if (years < 2) {
      timeAgo = TimeAgoMessages.aboutAYear;
      time = months.round();
    } else {
      timeAgo = TimeAgoMessages.years;
      time = years.round();
    }
    final prefix = S.of(context).prefixAgo;
    final suffix = S.of(context).suffixAgo;
    final separator = S.of(context).wordSeparator;
    var result = switch (timeAgo) {
      TimeAgoMessages.lessThanOneMinute => S.of(context).lessThanOneMinute,
      TimeAgoMessages.aboutAMinute => S.of(context).aboutAMinute,
      TimeAgoMessages.minutes => S.of(context).minutes(time),
      TimeAgoMessages.aboutAnHour => S.of(context).aboutAnHour,
      TimeAgoMessages.hours => S.of(context).hours(time),
      TimeAgoMessages.aDay => S.of(context).aDay,
      TimeAgoMessages.days => S.of(context).days(time),
      TimeAgoMessages.aboutAMonth => S.of(context).aboutAMonth,
      TimeAgoMessages.months => S.of(context).months(time),
      TimeAgoMessages.aboutAYear => S.of(context).aboutAYear,
      TimeAgoMessages.years => S.of(context).years(time),
    };
    return [prefix, result, suffix].where((element) => element.isNotEmpty).join(separator);
  }
}
