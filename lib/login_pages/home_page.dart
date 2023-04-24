import 'package:flutter/material.dart';
import 'package:flutter_gift_app/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gift_app/screens/CategoriesScreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text(
      'Login Authentication',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color(0xff4a148c),
      ),
    );
  }

  Widget _userUid() {
    return Column(
      children: [
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
        const SizedBox(height: 16),
        const Text(
          'Login Successful',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff4a148c),
          ),
        ),
        const SizedBox(height: 40),
        const Icon(
          Icons.person,
          color: Color(0xff4a148c),
          size: 50,
        ),
        Text(
          user?.email ?? 'User Email',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff4a148c),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff4a148c),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        backgroundColor: const Color(0xff4a148c),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _userUid(),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoriesScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff4a148c),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Continue to Homepage'),
            ),
            const SizedBox(height: 24.0),
            _signOutButton(),
          ],
        ),
      ),
    );
  }
}
