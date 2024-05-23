// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountCache {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCacheCopyWith<AccountCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCacheCopyWith<$Res> {
  factory $AccountCacheCopyWith(
          AccountCache value, $Res Function(AccountCache) then) =
      _$AccountCacheCopyWithImpl<$Res, AccountCache>;
  @useResult
  $Res call({int id, String username, DateTime updateTime, String? password});
}

/// @nodoc
class _$AccountCacheCopyWithImpl<$Res, $Val extends AccountCache>
    implements $AccountCacheCopyWith<$Res> {
  _$AccountCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? updateTime = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountCacheImplCopyWith<$Res>
    implements $AccountCacheCopyWith<$Res> {
  factory _$$AccountCacheImplCopyWith(
          _$AccountCacheImpl value, $Res Function(_$AccountCacheImpl) then) =
      __$$AccountCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, DateTime updateTime, String? password});
}

/// @nodoc
class __$$AccountCacheImplCopyWithImpl<$Res>
    extends _$AccountCacheCopyWithImpl<$Res, _$AccountCacheImpl>
    implements _$$AccountCacheImplCopyWith<$Res> {
  __$$AccountCacheImplCopyWithImpl(
      _$AccountCacheImpl _value, $Res Function(_$AccountCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? updateTime = null,
    Object? password = freezed,
  }) {
    return _then(_$AccountCacheImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountCacheImpl implements _AccountCache {
  const _$AccountCacheImpl(
      {required this.id,
      required this.username,
      required this.updateTime,
      this.password});

  @override
  final int id;
  @override
  final String username;
  @override
  final DateTime updateTime;
  @override
  final String? password;

  @override
  String toString() {
    return 'AccountCache(id: $id, username: $username, updateTime: $updateTime, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCacheImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, updateTime, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountCacheImplCopyWith<_$AccountCacheImpl> get copyWith =>
      __$$AccountCacheImplCopyWithImpl<_$AccountCacheImpl>(this, _$identity);
}

abstract class _AccountCache implements AccountCache {
  const factory _AccountCache(
      {required final int id,
      required final String username,
      required final DateTime updateTime,
      final String? password}) = _$AccountCacheImpl;

  @override
  int get id;
  @override
  String get username;
  @override
  DateTime get updateTime;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$AccountCacheImplCopyWith<_$AccountCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchHistoryCache {
  int get id => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHistoryCacheCopyWith<SearchHistoryCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryCacheCopyWith<$Res> {
  factory $SearchHistoryCacheCopyWith(
          SearchHistoryCache value, $Res Function(SearchHistoryCache) then) =
      _$SearchHistoryCacheCopyWithImpl<$Res, SearchHistoryCache>;
  @useResult
  $Res call({int id, String keyword, DateTime updateTime});
}

/// @nodoc
class _$SearchHistoryCacheCopyWithImpl<$Res, $Val extends SearchHistoryCache>
    implements $SearchHistoryCacheCopyWith<$Res> {
  _$SearchHistoryCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keyword = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryCacheImplCopyWith<$Res>
    implements $SearchHistoryCacheCopyWith<$Res> {
  factory _$$SearchHistoryCacheImplCopyWith(_$SearchHistoryCacheImpl value,
          $Res Function(_$SearchHistoryCacheImpl) then) =
      __$$SearchHistoryCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String keyword, DateTime updateTime});
}

/// @nodoc
class __$$SearchHistoryCacheImplCopyWithImpl<$Res>
    extends _$SearchHistoryCacheCopyWithImpl<$Res, _$SearchHistoryCacheImpl>
    implements _$$SearchHistoryCacheImplCopyWith<$Res> {
  __$$SearchHistoryCacheImplCopyWithImpl(_$SearchHistoryCacheImpl _value,
      $Res Function(_$SearchHistoryCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keyword = null,
    Object? updateTime = null,
  }) {
    return _then(_$SearchHistoryCacheImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SearchHistoryCacheImpl implements _SearchHistoryCache {
  const _$SearchHistoryCacheImpl(
      {required this.id, required this.keyword, required this.updateTime});

  @override
  final int id;
  @override
  final String keyword;
  @override
  final DateTime updateTime;

  @override
  String toString() {
    return 'SearchHistoryCache(id: $id, keyword: $keyword, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryCacheImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, keyword, updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryCacheImplCopyWith<_$SearchHistoryCacheImpl> get copyWith =>
      __$$SearchHistoryCacheImplCopyWithImpl<_$SearchHistoryCacheImpl>(
          this, _$identity);
}

abstract class _SearchHistoryCache implements SearchHistoryCache {
  const factory _SearchHistoryCache(
      {required final int id,
      required final String keyword,
      required final DateTime updateTime}) = _$SearchHistoryCacheImpl;

  @override
  int get id;
  @override
  String get keyword;
  @override
  DateTime get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryCacheImplCopyWith<_$SearchHistoryCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSettingsCache {
  int get id => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;
  bool? get rememberPassword => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsCacheCopyWith<UserSettingsCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCacheCopyWith<$Res> {
  factory $UserSettingsCacheCopyWith(
          UserSettingsCache value, $Res Function(UserSettingsCache) then) =
      _$UserSettingsCacheCopyWithImpl<$Res, UserSettingsCache>;
  @useResult
  $Res call(
      {int id,
      DateTime updateTime,
      bool? rememberPassword,
      ThemeMode themeMode,
      Language language,
      int? userId});
}

/// @nodoc
class _$UserSettingsCacheCopyWithImpl<$Res, $Val extends UserSettingsCache>
    implements $UserSettingsCacheCopyWith<$Res> {
  _$UserSettingsCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updateTime = null,
    Object? rememberPassword = freezed,
    Object? themeMode = null,
    Object? language = null,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rememberPassword: freezed == rememberPassword
          ? _value.rememberPassword
          : rememberPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSettingsCacheImplCopyWith<$Res>
    implements $UserSettingsCacheCopyWith<$Res> {
  factory _$$UserSettingsCacheImplCopyWith(_$UserSettingsCacheImpl value,
          $Res Function(_$UserSettingsCacheImpl) then) =
      __$$UserSettingsCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime updateTime,
      bool? rememberPassword,
      ThemeMode themeMode,
      Language language,
      int? userId});
}

/// @nodoc
class __$$UserSettingsCacheImplCopyWithImpl<$Res>
    extends _$UserSettingsCacheCopyWithImpl<$Res, _$UserSettingsCacheImpl>
    implements _$$UserSettingsCacheImplCopyWith<$Res> {
  __$$UserSettingsCacheImplCopyWithImpl(_$UserSettingsCacheImpl _value,
      $Res Function(_$UserSettingsCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updateTime = null,
    Object? rememberPassword = freezed,
    Object? themeMode = null,
    Object? language = null,
    Object? userId = freezed,
  }) {
    return _then(_$UserSettingsCacheImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rememberPassword: freezed == rememberPassword
          ? _value.rememberPassword
          : rememberPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UserSettingsCacheImpl implements _UserSettingsCache {
  const _$UserSettingsCacheImpl(
      {required this.id,
      required this.updateTime,
      this.rememberPassword,
      this.themeMode = ThemeMode.system,
      this.language = Language.system,
      this.userId});

  @override
  final int id;
  @override
  final DateTime updateTime;
  @override
  final bool? rememberPassword;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final Language language;
  @override
  final int? userId;

  @override
  String toString() {
    return 'UserSettingsCache(id: $id, updateTime: $updateTime, rememberPassword: $rememberPassword, themeMode: $themeMode, language: $language, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsCacheImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.rememberPassword, rememberPassword) ||
                other.rememberPassword == rememberPassword) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, updateTime, rememberPassword,
      themeMode, language, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsCacheImplCopyWith<_$UserSettingsCacheImpl> get copyWith =>
      __$$UserSettingsCacheImplCopyWithImpl<_$UserSettingsCacheImpl>(
          this, _$identity);
}

abstract class _UserSettingsCache implements UserSettingsCache {
  const factory _UserSettingsCache(
      {required final int id,
      required final DateTime updateTime,
      final bool? rememberPassword,
      final ThemeMode themeMode,
      final Language language,
      final int? userId}) = _$UserSettingsCacheImpl;

  @override
  int get id;
  @override
  DateTime get updateTime;
  @override
  bool? get rememberPassword;
  @override
  ThemeMode get themeMode;
  @override
  Language get language;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserSettingsCacheImplCopyWith<_$UserSettingsCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
