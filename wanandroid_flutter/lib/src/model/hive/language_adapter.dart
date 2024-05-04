part of 'hive_adapter.dart';

class LanguageAdapter extends TypeAdapter<Language> {
  @override
  final int typeId = 2; // 为 TypeAdapter 分配一个唯一的 typeId

  @override
  Language read(BinaryReader reader) {
    final int value = reader.readInt();
    switch (value) {
      case 0:
        return Language.system;
      case 1:
        return Language.zh;
      case 2:
        return Language.en;
      default:
        throw HiveError('Unknown Language value: $value');
    }
  }

  @override
  void write(BinaryWriter writer, Language obj) {
    switch (obj) {
      case Language.system:
        writer.writeInt(0);
        break;
      case Language.zh:
        writer.writeInt(1);
        break;
      case Language.en:
        writer.writeInt(2);
        break;
      default:
        throw HiveError('Unknown ThemeMode value: $obj');
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
