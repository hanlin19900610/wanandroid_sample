abstract class BaseError {
  final int code;
  final String message;

  BaseError({required this.code, required this.message});
}

class OtherError implements BaseError {

  final int statusCode;
  final String statusMessage;

  OtherError({required this.statusCode, required this.statusMessage});

  @override
  int get code => statusCode;

  @override
  String get message => statusMessage;

}