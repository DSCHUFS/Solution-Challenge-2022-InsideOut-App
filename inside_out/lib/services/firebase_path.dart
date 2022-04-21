import 'dart:io';

class Path {
  static String userInfo(String uid) => 'users/$uid';

  static String diaryInfo(String uid) => 'users/$uid/diaryInfo';
  static String diary(String uid, String diaryId) => 'users/$uid/diaryInfo/$diaryId';

  static String todoInfo(String uid) => 'users/$uid/todoInfo';
  static String todo(String uid, String todoId) => 'users/$uid/todoInfo/$todoId';

  static String sleepInfo(String uid) => 'users/$uid/sleepInfo';
  static String sleep(String uid, String sleepId) => 'users/$uid/sleepInfo/$sleepId';

  static String postInfo(String postId) => 'posts';
  static String post(String postId) => 'posts/$postId';

  static String commentInfo(String postId) => 'posts/$postId/comments';
  static String comment(String postId, String commentId) => 'posts/$postId/comments/$commentId';
}