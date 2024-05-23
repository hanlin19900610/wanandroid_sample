part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  final ThemeData themeData; //主题
  final int colorIndex; //数字
  const ThemeState(this.themeData, this.colorIndex);
}

final class ThemeInitial extends ThemeState {
  ThemeInitial() : super(ThemeData(primaryColor: Colors.blue), 4);

  @override
  List<Object> get props => [themeData, colorIndex];
}

final class ThemeStateImpl extends ThemeState {
  const ThemeStateImpl(super.themeData, super.colorIndex);

  @override
  List<Object> get props => [themeData, colorIndex];
}
