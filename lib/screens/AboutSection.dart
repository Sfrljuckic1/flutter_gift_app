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
          children: const [
            Text(
              'About',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Wrap it App was created to help you find the perfect gift for your loved ones.'
                  '\n '
                  '\n- Use the Gift Library to browse gift ideas for a variety of occasions '
                  '\n '
                  '\n- Take the Quiz to get personalized gift recommendations'
                  '\n '
                  '\n- Join the Forum to discuss gift ideas with other users, '
                  '\n '
                  '\n- Or just ask GiftBot for recommendations you\'ll get a custom response !'
                  '\n ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 24.0),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'If you have any questions or feedback about the app, please contact us '
                  'at support@wrapitapp.com. We\'d love to hear from you!',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 24.0),
            Text(
              'Disclaimer',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'The media and images used in this app are not owned by us and are sourced '
                  'from various online image URLs. We do not claim ownership of any of the '
                  'media or images used in this app. If you are the owner of any of the media '
                  'or images used in this app and wish to have it removed, please contact us '
                  'and we will take immediate action.' ,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
