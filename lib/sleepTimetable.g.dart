part of 'sleepTimetable.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SleepTimetableAdapter extends TypeAdapter<SleepTimetable> {
  @override
  final int typeId = 0;

  @override
  SleepTimetable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SleepTimetable(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SleepTimetable obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.timer)
      ..writeByte(1)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SleepTimetableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
