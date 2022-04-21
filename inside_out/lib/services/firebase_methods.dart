import 'package:inside_out/models/userInfo.dart';
import 'package:inside_out/models/diaryInfo.dart';
import 'package:inside_out/models/todoInfo.dart';
import 'package:inside_out/models/sleepInfo.dart';
import 'package:inside_out/models/post.dart';
import 'package:inside_out/models/comment.dart';
import 'package:inside_out/services/database_behavior.dart';
import 'package:inside_out/services/firebase_path.dart';

abstract class DB_methods{
  // user info set
  Stream<UserInfo> userStream();
  Future<void> setUserInfo(UserInfo userInfo);

  // diary 
  Stream<List<Diary>> diaryStream(String uid);
  Future<void> setDiary(Diary diary);
  Future<void> deleteDiary(Diary diary);

  // todo
  Stream<List<Todo>> todoStream(String uid);
  Future<void> setTodo(Todo todo);
  Future<void> deleteTodo(Todo todo);

  // sleep 
  Stream<List<Sleep>> sleepStream(String uid);
  Future<void> setSleepInfo(Sleep sleep);
  Future<void> deleteSleepInfo(Sleep sleep);

  // post
  Stream<Post> postStream();
  Future<void> setPost(Post post);
  Future<void> deletePost(Post post);

  // comment
  Stream<List<Comment>> commentStream(String postId);
  Future<void> setComment(Comment comment);
  Future<void> deleteComment(Comment comment);
}

// TODO: 해보고 안 되는 것 같으면 post+comment/user 로 class 나눠서 사용하기
class FirestoreMethods implements DB_methods {

  FirestoreMethods({
    required this.uid,
    required this.postId
  }) : assert(uid != null);

  final String uid;
  final String postId;

  final instance = DatabaseService.instance;

  @override
  Stream<UserInfo> userStream() => instance.documentStream(
    path: Path.userInfo(uid), 
    builder: (data, documentId) => UserInfo.fromMap(data, documentId),
  );

  @override
  Future<void> setUserInfo(UserInfo userInfo) => instance.setData(
    path: Path.userInfo(uid), 
    data: userInfo.toMap(),
  );

  @override
  Stream<List<Diary>> diaryStream(String uid) => instance.collectionStream(
    path: Path.diaryInfo(uid), 
    builder: (data, documentId) => Diary.fromMap(data, documentId),
  );

  @override
  Future<void> setDiary(Diary diary) => instance.setData(
    path: Path.diary(uid, diary.id), 
    data: diary.toMap()
  );


  @override
  Future<void> deleteDiary(Diary diary) => instance.deleteData(
    path: Path.diary(uid, diary.id),
  );

  @override
  Stream<List<Todo>> todoStream(String uid) => instance.collectionStream(
    path: Path.todoInfo(uid), 
    builder: (data, documentId) => Todo.fromMap(data, documentId),
  );
  
  @override
  Future<void> setTodo(Todo todo) => instance.setData(
    path: Path.todo(uid, todo.id), 
    data: todo.toMap()
  );

  @override
  Future<void> deleteTodo(Todo todo) => instance.deleteData(
    path: Path.todo(uid, todo.id),
  );

  @override
  Stream<List<Sleep>> sleepStream(String uid) => instance.collectionStream(
    path: Path.sleepInfo(uid), 
    builder: (data, documentId) => Sleep.fromMap(data, documentId),
  );

  @override
  Future<void> setSleepInfo(Sleep sleep) => instance.setData(
    path: Path.sleep(uid, sleep.id), 
    data: sleep.toMap()
  );

  
  @override
  Future<void> deleteSleepInfo(Sleep sleep) => instance.deleteData(
    path: Path.sleep(uid, sleep.id),
  );

  @override
  Stream<Post> postStream() => instance.documentStream(
    path: Path.postInfo(postId), 
    builder: (data, documentId) => Post.fromMap(data, documentId),
  );

  @override
  Future<void> setPost(Post post) => instance.setData(
    path: Path.post(post.id), 
    data: post.toMap()
  );
  
  @override
  Future<void> deletePost(Post post) => instance.deleteData(
    path: Path.post(post.id)
  );

  @override
  Stream<List<Comment>> commentStream(String postId) => instance.collectionStream(
    path: Path.commentInfo(postId), 
    builder: (data, documentId) => Comment.fromMap(data, documentId),
  );

  @override
  Future<void> setComment(Comment comment) => instance.setData(
    path: Path.comment(postId, comment.id), 
    data: comment.toMap(),
  );

  @override
  Future<void> deleteComment(Comment comment) => instance.deleteData(
      path: Path.comment(postId, comment.id)
  );



}