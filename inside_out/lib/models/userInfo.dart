import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// user, main collection
class UserInfo {
  UserInfo({
    required this.userId,
    required this.email,
    required this.sleepGoals,
  });

  final String userId;
  final String email;
  final GoalTime sleepGoals;

  factory UserInfo.fromMap(Map<String, dynamic> data, String id){
    return UserInfo(
      userId: id,
      email: data['email'],
      sleepGoals: data['sleepGoals']
    );
  }
}

class GoalTime {
  GoalTime({
    required this.wakeupHours,
    required this.wakeupMinutes,
    required this.sleepHours,
    required this.sleepMinutes,
  });

  final int wakeupHours;
  final int wakeupMinutes;
  final int sleepHours;
  final int sleepMinutes;

  factory GoalTime.fromMap(Map<int, dynamic> data, String id){
    return GoalTime(
      wakeupHours: data['wakeupHours'],
      wakeupMinutes: data['wakeupMinutes'],
      sleepHours: data['sleepHours'],
      sleepMinutes: data['sleepMinutes'],
    );
  }
}