
part of 'hive_adapter.dart';

// 创建一个 Hive 适配器来序列化和反序列化 ThemeMode
class ThemeModeAdapter extends TypeAdapter<ThemeMode> {
  @override
  final int typeId = 1; // 为 TypeAdapter 分配一个唯一的 typeId

  @override
  ThemeMode read(BinaryReader reader) {
    final int value = reader.readInt();
    switch (value) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        throw HiveError('Unknown ThemeMode value: $value');
    }
  }

  @override
  void write(BinaryWriter writer, ThemeMode obj) {
    switch (obj) {
      case ThemeMode.system:
        writer.writeInt(0);
        break;
      case ThemeMode.light:
        writer.writeInt(1);
        break;
      case ThemeMode.dark:
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
          other is ThemeModeAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}