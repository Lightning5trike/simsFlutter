
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'sleepTimetable.g.dart';

@HiveType(typeId: 0)
class SleepTimetable extends HiveObject{
  @HiveField(0)
  final double timer;
  @HiveField(1)
  final String date;
  SleepTimetable(this.timer, this.date);
}
