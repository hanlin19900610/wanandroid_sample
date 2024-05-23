part of 'locale_bloc.dart';

sealed class LocaleState extends Equatable {
  final Locale locale;
  const LocaleState(this.locale);
}

final class LocaleInitial extends CnLocaleState {
  @override
  List<Object> get props => [locale];
}

class CnLocaleState extends LocaleState {
  const CnLocaleState() : super(const Locale('zh', 'CH'));

  @override
  List<Object?> get props => [locale];
}

class EnLocaleState extends LocaleState {
  const EnLocaleState() : super(const Locale('en', 'US'));

  @override
  List<Object?> get props => [locale];
}
