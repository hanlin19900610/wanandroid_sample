part of 'models.dart';

enum Language {
  system(null),
  en(Locale('en')),
  zh(Locale('zh'));

  const Language(this.locale);

  final Locale? locale;
}