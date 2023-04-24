import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/gift_model.dart';

class GiftsScreen extends StatelessWidget {
  final GiftCategory giftCategory;

  const GiftsScreen({super.key, required this.giftCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(giftCategory.title),
    ),
    body: ListView.builder(
    itemCount: giftCategory.gifts.length,
    itemBuilder: (BuildContext context, int index) {
    return ListTile(
    leading: Image.network(giftCategory.gifts[index].image),
    title: Text(giftCategory.gifts[index].name),
    subtitle: Text(giftCategory.gifts[index].description),
      onTap: () {
        // Add functionality to display gift details screen
      },
    );
    }),
    );
  }
}
