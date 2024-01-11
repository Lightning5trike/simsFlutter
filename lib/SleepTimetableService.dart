import 'package:flutter/material.dart';
import 'package:flutterviz/sleepTimetable.dart';
import 'package:hive/hive.dart';

class SleepTimetableService {
  final String _boxHoursSleep = "HoursAsleep";
  Future<Box<SleepTimetable>> get _box async =>
      await Hive.openBox(_boxHoursSleep);

  Future<void> addTimer(SleepTimetable timer) async {
    var box = await _box;
    await box.add(timer);
  }

  Future<void> addDate(SleepTimetable date) async {
    var box = await _box;
    await box.add(date);
  }

  Future<List<SleepTimetable>> getAllData() async {
    var box = await _box;
    return await box.values.toList();
  }
}
