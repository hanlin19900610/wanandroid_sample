part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class EventSwitchTheme extends ThemeEvent {
  final ThemeData themeData; //主题
  final int colorIndex; //数字
  const EventSwitchTheme(this.colorIndex, this.themeData);

  @override
  List<Object?> get props => [colorIndex, themeData];
}

class EventResetTheme extends ThemeEvent {
  @override
  List<Object?> get props => [];
}
