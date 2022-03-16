import 'package:cloud_firestore/cloud_firestore.dart';

// post, main collection
class Post {
  Post({
    required this.id,
    required this.userId,
    required this.date,
    required this.postTitle,
    required this.postContent,
    required this.like,
  });

  final String id;
  final String userId;
  final Timestamp date;
  final String postTitle;
  final String postContent;
  final int like;

  factory Post.fromMap(Map<dynamic, dynamic> data, String id){
    return Post(
      id: id,
      userId: data['userId'],
      date: data['date'],
      postTitle: data['postTitle'],
      postContent: data['postContent'],
      like: data['like'],
    );
  }

  Map<dynamic, dynamic> toMap(){
    return <dynamic, dynamic>{
      'userId': userId,
      'date': date,
      'postTitle': postTitle,
      'postContent': postContent,
      'like': like,
    };
  }
}