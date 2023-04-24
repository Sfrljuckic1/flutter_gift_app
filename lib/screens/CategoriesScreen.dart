import 'package:flutter/material.dart';
import 'package:flutter_gift_app/screens/QuizScreen.dart';
import 'package:flutter_gift_app/screens/ForumScreen.dart';
import 'package:flutter_gift_app/screens/ChatbotScreen.dart';

import 'AboutSection.dart';
import 'GiftLibraryScreen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeffafa),

      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Home'),
            const SizedBox(width: 100),
            Image.asset(
              'assets/images/gift_logo.png',
              height: 45, // adjust the height as needed
            ),
            const SizedBox(width: 15)

          ],
        ),
          backgroundColor: const Color(0xff4a148c), // Set the background color of the AppBar
      ),


      body: SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const SizedBox(height: 16.0),

              Flexible(
                child: Card(
                  color: const Color(0xffb992df),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GiftLibraryScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.card_giftcard, size: 64, color: Colors.white),
                          Text('Gift Library', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Find gifts for any occasion from our variety of categories!', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

              Flexible(
                child: Card(
                  color: const Color(0xfffc2688),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const QuizScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.quiz, size: 64, color: Colors.white),
                          Text('Take a Gift Quiz', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Take our quiz to find out which gift is best for you!', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

              Flexible(
                child: Card(
                  color: const Color(0xff322591),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForumScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.people, size: 64, color: Colors.white),
                          Text('User Forum', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Discuss gift ideas with other users in our open posting forum!', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

              Flexible(
                child: Card(
                  color: Colors.green,
                  elevation: 8.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChatScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.chat, size: 64, color: Colors.white),
                          Text('Talk to GiftBot', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Get gift ideas and recommendations from our Gift Chatbot!', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Flexible(
                child: SingleChildScrollView (
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [

                        // ...

                        SizedBox(height: 16.0),

                        AboutSection(),

                      ],
                    ),
                  ),
                ),

              )

            ],
          ),

        ),
      ),

    );
  }
}





