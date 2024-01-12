import 'package:flutter/material.dart';
import 'package:flutterviz/sleepTimetable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'SleepTimetableService.dart';

class NewScreen extends StatelessWidget {
  final SleepTimetableService _sleepTimetableService = SleepTimetableService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: Hive.box<SleepTimetable>('HoursAsleep').listenable(),
          builder: (context, Box<SleepTimetable> box, _) {
            return ListView.builder(
                itemCount: box.values.length,
                itemBuilder: (context, index) {
                  var times = box.getAt(index);
                  return Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('${times!.timer}:${times.date}'),
                        trailing: IconButton(
                            icon: const Icon(Icons.delete_forever),
                            onPressed: () =>
                                _sleepTimetableService.deleteTime(index)),
                      ),
                      Divider(),
                    ],
                  );
                });
          }),
    );
  }
}
