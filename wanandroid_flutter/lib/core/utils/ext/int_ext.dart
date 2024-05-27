part of 'ext.dart';
extension IntExt on int? {
  String? toDateTimeTranslation(BuildContext context) {
    if (this == null) {
      return null;
    }

    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this!);

    final DateTime now = DateTime.now();

    final Duration difference = now.difference(dateTime);

    final int day = difference.inDays;

    if (day > 28) {
      final int year = now.year - dateTime.year;

      if (year > 0) {
        return S.of(context).yearsAgo(year);
      }

      final int month = now.month - dateTime.month;

      if (month > 0) {
        return S.of(context).monthsAgo(month);
      }
    }

    if (day > 0) {
      return S.of(context).daysAgo(day);
    }

    final int hour = difference.inHours;

    if (hour > 0) {
      return S.of(context).hoursAgo(hour);
    }

    return S.of(context).minutesAgo(difference.inMinutes);
  }
}