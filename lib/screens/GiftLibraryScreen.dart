import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gift_app/models/gift_model.dart';
import 'GIftsScreen.dart';

class GiftLibraryScreen extends StatelessWidget {
  const GiftLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference categories =
    FirebaseFirestore.instance.collection('gift_categories');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF951170),
        title: const Text("Gift Categories"),
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: categories.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading');
          }

          List<GiftCategory> giftCategories = snapshot.data!.docs
              .map((doc) => GiftCategory.fromFirestore(doc))
              .toList();

          return ListView.builder(
            itemCount: giftCategories.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: Image.network(giftCategories[index].icon.toString()),
                  title: Text(giftCategories[index].title),
                  subtitle: Text(giftCategories[index].occasion),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GiftScreen(
                          giftCategory: giftCategories[index],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
