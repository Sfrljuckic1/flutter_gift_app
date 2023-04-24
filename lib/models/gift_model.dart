import 'package:cloud_firestore/cloud_firestore.dart';

class Gift {
  final String name;
  final String description;
  final String image;

  Gift({required this.name, required this.description, required this.image});

  factory Gift.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Gift(
        name: data['name'] ?? '',
        description: data['description'] ?? '',
        image: data['image'] ?? '');
  }
}

class GiftCategory {
  final String title;
  final String occasion;
  final String icon;
  final List<Gift> gifts;

  GiftCategory({
    required this.title,
    required this.occasion,
    required this.icon,
    required this.gifts,
  });

  factory GiftCategory.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    List<Gift> gifts = [];
    doc.reference.collection('gifts').get().then((querySnapshot) {
      gifts = querySnapshot.docs.map((doc) => Gift.fromFirestore(doc)).toList();
    });
    return GiftCategory(
      title: data['title'] ?? '',
      occasion: data['occasion'] ?? '',
      icon: data['icon'] ?? '',
      gifts: gifts,
    );
  }
}


