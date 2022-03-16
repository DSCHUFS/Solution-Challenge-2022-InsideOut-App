import 'package:cloud_firestore/cloud_firestore.dart';

// post - comment, subcollection
class Comment {
  Comment({
    required this.id,
    required this.userId,
    required this.date,
    required this.comment,
  });

  final String id;
  final String userId;
  final Timestamp date;
  final String comment;

  factory Comment.fromMap(Map<String, dynamic> data, String id){
    return Comment(
      id: id,
      userId: data['userId'],
      date: data['date'],
      comment: data['comment'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'date': date,
      'comment': comment,
    };
  }
}