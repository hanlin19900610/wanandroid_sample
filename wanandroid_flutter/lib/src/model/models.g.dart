// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserSettingsCacheAdapter extends TypeAdapter<UserSettingsCache> {
  @override
  final int typeId = 0;

  @override
  UserSettingsCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserSettingsCache(
      themeMode: fields[0] as ThemeMode,
      language: fields[1] as Language,
    );
  }

  @override
  void write(BinaryWriter writer, UserSettingsCache obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.themeMode)
      ..writeByte(1)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserSettingsCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerBeanImpl _$$BannerBeanImplFromJson(Map<String, dynamic> json) =>
    _$BannerBeanImpl(
      desc: json['desc'] as String,
      id: json['id'] as int,
      imagePath: json['imagePath'] as String,
      isVisible: json['isVisible'] as int,
      order: json['order'] as int,
      title: json['title'] as String,
      type: json['type'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BannerBeanImplToJson(_$BannerBeanImpl instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
