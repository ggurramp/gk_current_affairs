import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GmailLoginPage extends StatefulWidget {
  @override
  _GmailLoginPageState createState() => _GmailLoginPageState();
}

class _GmailLoginPageState extends State<GmailLoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  void _loginWithGmail() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);
        final User? user = authResult.user;

        if (user != null) {
          // User logged in successfully, navigate to next page or do something
          print('Gmail login successful: ${user.displayName}');
        } else {
          // Authentication failed
          print('Gmail login failed');
        }
      } else {
        // Gmail login canceled
        print('Gmail login canceled');
      }
    } catch (e) {
      print('Error during Gmail login: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Gmail Login Page',
            //   style: TextStyle(fontSize: 20),
            // ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loginWithGmail,
              child: Text('Login with Gmail'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GmailLoginPage(),
  ));
}
