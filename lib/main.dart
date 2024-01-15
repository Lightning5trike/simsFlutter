import 'package:flutter/material.dart';
import 'package:flutterviz/SleepTimetableService.dart';
import 'homeScreen.dart';
import 'sleepTimetable.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.initFlutter();
  Hive.registerAdapter(SleepTimetableAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SleepTimetableService _sleepTimetableService = SleepTimetableService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simify3',
        home: FutureBuilder(
            future: _sleepTimetableService.getAllData(),
            builder: (BuildContext context,
                AsyncSnapshot<List<SleepTimetable>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return HomeScreen();
              } else {
                return const CircularProgressIndicator();
              }
            }));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Simify3"),
    );
  }
}
