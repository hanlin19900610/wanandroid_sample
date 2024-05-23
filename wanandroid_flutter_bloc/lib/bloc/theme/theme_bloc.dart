import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {

  ThemeBloc() : super(ThemeInitial()) {
    on<EventSwitchTheme>(_switchTheme);
    on<EventResetTheme>(_resetTheme);
  }

  /// 切换主题
  FutureOr<void> _switchTheme(EventSwitchTheme event, Emitter<ThemeState> emit) {
    emit(ThemeStateImpl(event.themeData,event.colorIndex));
  }

  /// 重置主题
  FutureOr<void> _resetTheme(EventResetTheme event, Emitter<ThemeState> emit) {
    emit(ThemeInitial());
  }
}
