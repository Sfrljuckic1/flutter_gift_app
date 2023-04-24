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
    return const Text('Login Authentication');
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
          ),
        ),
        const SizedBox(height: 40),
        const Icon(Icons.person),
        Text(user?.email ?? 'User Email'),
        const SizedBox(height: 40),
      ],
    );
  }



  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
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
