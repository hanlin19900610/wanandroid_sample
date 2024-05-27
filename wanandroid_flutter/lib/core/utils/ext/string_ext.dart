part of 'ext.dart';

extension StringExt on String? {

  bool get mustNotEmpty => this != null && this!.trim().isNotEmpty;

  String? get strictValue => mustNotEmpty ? this : null;
}