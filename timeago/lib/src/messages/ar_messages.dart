import 'package:intl/intl.dart';
import 'package:timeago/src/messages/lookupmessages.dart';

/// Arabic Messages
final _numberFormat = NumberFormat.compact(locale: "ar_EG");

class ArMessages implements LookupMessages {
  @override
  String prefixAgo() => 'منذ';
  @override
  String prefixFromNow() => 'بعد';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';

  @override
  String lessThanOneMinute(int seconds) {
    if (seconds == 1) {
      return 'ثانية واحدة';
    } else if (seconds == 2) {
      return 'ثانيتين';
    } else if (seconds > 2 && seconds < 11) {
      return 'ثواني ${_numberFormat.format(seconds)}';
    } else {
      return 'ثانية ${_numberFormat.format(seconds)}';
    }
  }

  @override
  String aboutAMinute(int minutes) => 'حوالي دقيقة';
  @override
  String minutes(int minutes) {
    if (minutes == 1) {
      return 'دقيقة واحدة';
    } else if (minutes == 2) {
      return 'دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return 'دقائق ${_numberFormat.format(minutes)}';
    } else {
      return 'دقيقة ${_numberFormat.format(minutes)}';
    }
  }

  @override
  String aboutAnHour(int minutes) => 'حوالي الساعة';
  @override
  String hours(int hours) {
    if (hours == 1) {
      return 'ساعة';
    } else if (hours == 2) {
      return 'ساعتين';
    } else if (hours > 2 && hours < 11) {
      return 'ساعات ${_numberFormat.format(hours)}';
    } else {
      return 'ساعة ${_numberFormat.format(hours)}';
    }
  }

  @override
  String aDay(int hours) => 'يوم';
  @override
  String days(int days) {
    if (days == 1) {
      return 'يوم واحد';
    } else if (days == 2) {
      return 'يومين';
    } else if (days > 2 && days < 11) {
      return 'ايام ${_numberFormat.format(days)}';
    } else {
      return 'يوم ${_numberFormat.format(days)}';
    }
  }

  @override
  String aboutAMonth(int days) => 'حوالي شهر';
  @override
  String months(int months) {
    if (months == 1) {
      return 'منذ شهر';
    } else if (months == 2) {
      return 'منذ شهرين';
    } else if (months > 2 && months < 11) {
      return 'اشهر ${_numberFormat.format(months)}';
    } else if (months > 10) {
      return 'شهر ${_numberFormat.format(months)}';
    }
    return 'شهور ${_numberFormat.format(months)}';
  }

  @override
  String aboutAYear(int year) => 'قبل سنة';
  @override
  String years(int years) {
    if (years == 1) {
      return 'منذ سنة';
    } else if (years == 2) {
      return 'منذ سنتين';
    } else if (years > 2 && years < 11) {
      return 'سنوات ${_numberFormat.format(years)}';
    } else {
      return 'سنة ${_numberFormat.format(years)}';
    }
  }

  @override
  String wordSeparator() => ' ';
}

/// Arabic short Messages
class ArShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) =>
      'ثا ${_numberFormat.format(minutes)}';
  @override
  String aboutAMinute(int minutes) => 'د ${_numberFormat.format(1)}~';
  @override
  String minutes(int minutes) => 'د ${_numberFormat.format(minutes)}';
  @override
  String aboutAnHour(int hours) => 'س ${_numberFormat.format(1)}~';
  @override
  String hours(int hours) => 'س ${_numberFormat.format(hours)}';
  @override
  String aDay(int days) => 'ي ${_numberFormat.format(1)}~';
  @override
  String days(int days) => 'ي ${_numberFormat.format(days)}';
  @override
  String aboutAMonth(int months) => 'ش ${_numberFormat.format(1)}~';
  @override
  String months(int months) => 'ش ${_numberFormat.format(months)}';
  @override
  String aboutAYear(int years) => 'سنة ${_numberFormat.format(1)}~';
  @override
  String years(int years) => 'سنة ${_numberFormat.format(years)}';
  @override
  String wordSeparator() => ' ';
}
