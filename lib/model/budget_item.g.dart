// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseDataAdapter extends TypeAdapter<ExpenseData> {
  @override
  final int typeId = 3;

  @override
  ExpenseData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseData()..expenses = (fields[0] as Map).cast<String, double>();
  }

  @override
  void write(BinaryWriter writer, ExpenseData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.expenses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
