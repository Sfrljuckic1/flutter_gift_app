import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id;
  final String title;
  final String message;
  final List<String> tags;
  final List<String> replies;
  final String username; // new property to store the username
  final DateTime dateCreated; // new property to store the dateCreated

  Post({
    required this.id,
    required this.title,
    required this.message,
    required this.tags,
    required this.replies,
    required this.username,
    required this.dateCreated,
  });

  // Getters for dateCreated and dateUpdated
  Timestamp get dateCreatedTimestamp => Timestamp.fromDate(dateCreated);

  factory Post.fromSnapshot(QueryDocumentSnapshot snapshot) {
    final Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    return Post(
      id: snapshot.id,
      title: data['title'] as String,
      message: data['message'] as String,
      tags: (data['tags'] != null) ? List<String>.from(data['tags'] as List<dynamic>) : [],
      replies: (data['replies'] != null) ? List<String>.from(data['replies'] as List<dynamic>) : [],
      username: data.containsKey('username') ? data['username'] as String : '',
      dateCreated: (data.containsKey('dateCreated') && data['dateCreated'] != null) ? (data['dateCreated'] as Timestamp).toDate() : DateTime.now(),
    );
  }

}


