import 'package:cloud_firestore/cloud_firestore.dart';

// user - todo, subcollection
class Todo {
  Todo({
    required this.id,
    required this.date,
    required this.completed,
    required this.context,
  });

  final String id;
  final Timestamp date;
  final bool completed;
  final String context;

  factory Todo.fromMap(Map<String, dynamic> data, String id){
    return Todo(
      id: id,
      date: data['date'],
      completed: data['completed'],
      context: data['context']
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'completed': completed,
      'context': context,
    };
  }
}