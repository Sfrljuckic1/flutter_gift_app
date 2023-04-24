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
  final String icon;
  final String occasion;
  final String id;
  final List<Gift> gifts;

  GiftCategory({
    required this.title,
    required this.icon,
    required this.occasion,
    required this.id,
    required this.gifts,
  });

  factory GiftCategory.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return GiftCategory(
      title: data['title'] ?? '',
      occasion: data['occasion'] ?? '',
      icon: data['icon'] ?? '',
      gifts: [],
      id: doc.id, // set the id based on the document snapshot
    );
  }

  Future<List<Gift>> fetchGifts() async {
    print('Fetching gifts for category: $title');
    final QuerySnapshot result = await FirebaseFirestore.instance
        .collection('gift_categories')
        .doc(id)
        .collection('gifts')
        .get();
    final List<DocumentSnapshot> documents = result.docs;
    print('Fetched ${documents.length} gifts for category: $title');
    return documents.map((doc) => Gift.fromFirestore(doc)).toList();
  }

}

