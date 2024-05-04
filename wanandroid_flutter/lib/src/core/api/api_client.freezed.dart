// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  int get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call({int code, String? message, dynamic data});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataImplCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataImplCopyWith(
          _$ResponseDataImpl value, $Res Function(_$ResponseDataImpl) then) =
      __$$ResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? message, dynamic data});
}

/// @nodoc
class __$$ResponseDataImplCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$ResponseDataImpl>
    implements _$$ResponseDataImplCopyWith<$Res> {
  __$$ResponseDataImplCopyWithImpl(
      _$ResponseDataImpl _value, $Res Function(_$ResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataImpl extends _ResponseData {
  _$ResponseDataImpl({this.code = 0, this.message, this.data}) : super._();

  factory _$ResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ResponseData(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      __$$ResponseDataImplCopyWithImpl<_$ResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseData extends ResponseData {
  factory _ResponseData(
      {final int code,
      final String? message,
      final dynamic data}) = _$ResponseDataImpl;
  _ResponseData._() : super._();

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$ResponseDataImpl.fromJson;

  @override
  int get code;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
