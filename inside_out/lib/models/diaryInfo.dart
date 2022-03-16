import 'package:cloud_firestore/cloud_firestore.dart';

// user - diary, subcollection
class Diary {
  Diary({
    required this.id,
    required this.diaryTitle,
    required this.diaryContent,
    required this.date,
    required this.emotion,
    required this.category,
  });

  final String id;
  final String diaryTitle;
  final String diaryContent;
  final Timestamp date;
  final String emotion;
  final String category;

  factory Diary.fromMap(Map<String, dynamic> data, String id){
    return Diary(
      id: id,
      date: data['date'],
      diaryContent: data['diaryContent'],
      diaryTitle: data['diaryTitle'],
      emotion: data['emotion'],
      category: data['category'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'diaryContent': diaryContent,
      'diaryTitle': diaryTitle,
      'emotion': emotion,
      'category': category,
    };
  }
}