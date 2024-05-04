part of 'ext.dart';

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDarkTheme => theme.brightness == Brightness.dark;

  Size get mqSize => MediaQuery.of(this).size;

  EdgeInsets get mqPadding => MediaQuery.of(this).padding;

  TextScaler get mqTextScaler => MediaQuery.textScalerOf(this);
}