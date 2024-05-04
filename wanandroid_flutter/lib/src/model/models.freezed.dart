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

BannerBean _$BannerBeanFromJson(Map<String, dynamic> json) {
  return _BannerBean.fromJson(json);
}

/// @nodoc
mixin _$BannerBean {
  String get desc => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get isVisible => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerBeanCopyWith<BannerBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerBeanCopyWith<$Res> {
  factory $BannerBeanCopyWith(
          BannerBean value, $Res Function(BannerBean) then) =
      _$BannerBeanCopyWithImpl<$Res, BannerBean>;
  @useResult
  $Res call(
      {String desc,
      int id,
      String imagePath,
      int isVisible,
      int order,
      String title,
      int type,
      String url});
}

/// @nodoc
class _$BannerBeanCopyWithImpl<$Res, $Val extends BannerBean>
    implements $BannerBeanCopyWith<$Res> {
  _$BannerBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? id = null,
    Object? imagePath = null,
    Object? isVisible = null,
    Object? order = null,
    Object? title = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerBeanImplCopyWith<$Res>
    implements $BannerBeanCopyWith<$Res> {
  factory _$$BannerBeanImplCopyWith(
          _$BannerBeanImpl value, $Res Function(_$BannerBeanImpl) then) =
      __$$BannerBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String desc,
      int id,
      String imagePath,
      int isVisible,
      int order,
      String title,
      int type,
      String url});
}

/// @nodoc
class __$$BannerBeanImplCopyWithImpl<$Res>
    extends _$BannerBeanCopyWithImpl<$Res, _$BannerBeanImpl>
    implements _$$BannerBeanImplCopyWith<$Res> {
  __$$BannerBeanImplCopyWithImpl(
      _$BannerBeanImpl _value, $Res Function(_$BannerBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? id = null,
    Object? imagePath = null,
    Object? isVisible = null,
    Object? order = null,
    Object? title = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$BannerBeanImpl(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerBeanImpl implements _BannerBean {
  _$BannerBeanImpl(
      {required this.desc,
      required this.id,
      required this.imagePath,
      required this.isVisible,
      required this.order,
      required this.title,
      required this.type,
      required this.url});

  factory _$BannerBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerBeanImplFromJson(json);

  @override
  final String desc;
  @override
  final int id;
  @override
  final String imagePath;
  @override
  final int isVisible;
  @override
  final int order;
  @override
  final String title;
  @override
  final int type;
  @override
  final String url;

  @override
  String toString() {
    return 'BannerBean(desc: $desc, id: $id, imagePath: $imagePath, isVisible: $isVisible, order: $order, title: $title, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerBeanImpl &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, desc, id, imagePath, isVisible, order, title, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerBeanImplCopyWith<_$BannerBeanImpl> get copyWith =>
      __$$BannerBeanImplCopyWithImpl<_$BannerBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerBeanImplToJson(
      this,
    );
  }
}

abstract class _BannerBean implements BannerBean {
  factory _BannerBean(
      {required final String desc,
      required final int id,
      required final String imagePath,
      required final int isVisible,
      required final int order,
      required final String title,
      required final int type,
      required final String url}) = _$BannerBeanImpl;

  factory _BannerBean.fromJson(Map<String, dynamic> json) =
      _$BannerBeanImpl.fromJson;

  @override
  String get desc;
  @override
  int get id;
  @override
  String get imagePath;
  @override
  int get isVisible;
  @override
  int get order;
  @override
  String get title;
  @override
  int get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$BannerBeanImplCopyWith<_$BannerBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSettingsCache {
  @HiveField(0)
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @HiveField(1)
  Language get language => throw _privateConstructorUsedError;

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
      {@HiveField(0) ThemeMode themeMode, @HiveField(1) Language language});
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
    Object? themeMode = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
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
      {@HiveField(0) ThemeMode themeMode, @HiveField(1) Language language});
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
    Object? themeMode = null,
    Object? language = null,
  }) {
    return _then(_$UserSettingsCacheImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$UserSettingsCacheImpl implements _UserSettingsCache {
  const _$UserSettingsCacheImpl(
      {@HiveField(0) this.themeMode = ThemeMode.system,
      @HiveField(1) this.language = Language.system});

  @override
  @JsonKey()
  @HiveField(0)
  final ThemeMode themeMode;
  @override
  @JsonKey()
  @HiveField(1)
  final Language language;

  @override
  String toString() {
    return 'UserSettingsCache(themeMode: $themeMode, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsCacheImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsCacheImplCopyWith<_$UserSettingsCacheImpl> get copyWith =>
      __$$UserSettingsCacheImplCopyWithImpl<_$UserSettingsCacheImpl>(
          this, _$identity);
}

abstract class _UserSettingsCache implements UserSettingsCache {
  const factory _UserSettingsCache(
      {@HiveField(0) final ThemeMode themeMode,
      @HiveField(1) final Language language}) = _$UserSettingsCacheImpl;

  @override
  @HiveField(0)
  ThemeMode get themeMode;
  @override
  @HiveField(1)
  Language get language;
  @override
  @JsonKey(ignore: true)
  _$$UserSettingsCacheImplCopyWith<_$UserSettingsCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
