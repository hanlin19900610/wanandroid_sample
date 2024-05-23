import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleInitial()) {
    on<EventSwitch2CN>((event, emit) {
      emit(const CnLocaleState());
    });
    on<EventSwitch2EN>((event, emit) {
      emit(const EnLocaleState());
    });
  }
}
