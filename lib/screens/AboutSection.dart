import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'This app was created to help you find the perfect gift for your loved ones. '
                  'Use the Gift Library to browse gift ideas for any occasion, take the Quiz to '
                  'get personalized gift recommendations, join the Forum to discuss gift ideas '
                  'with other users, and talk to Giftbot for gift recommendations.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'If you have any questions or feedback about the app, please contact us '
                  'at support@giftapp.com. We\'d love to hear from you!',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Follow Us',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
