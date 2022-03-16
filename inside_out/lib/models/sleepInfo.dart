import 'package:cloud_firestore/cloud_firestore.dart';

// user - sleep, subcollection
class Sleep {
  Sleep({
    required this.id,
    required this.date,
    required this.sleepingTime,
    required this.bedTime,
    required this.awakeTime,
  });

  final String id;
  final Timestamp date;
  final int sleepingTime;
  final Timestamp bedTime;
  final Timestamp awakeTime;

  factory Sleep.fromMap(Map<String, dynamic> data, String id){
    return Sleep(
      id: id,
      date: data['date'],
      sleepingTime: data['sleepingTime'],
      bedTime: data['bedTime'],
      awakeTime: data['awakeTime']
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'sleepingTime': sleepingTime,
      'bedTime': bedTime,
      'awakeTime':awakeTime,
    };
  }
}

