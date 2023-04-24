import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gift_app/models/forum_model.dart';

class DatabaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> createPost(Post post) async {
    await _firestore.collection('posts').add({
      'title': post.title,
      'message': post.message,
      'tags': post.tags,
      'username': post.username,
      'dateCreated': post.dateCreated,
    });
  }
}
