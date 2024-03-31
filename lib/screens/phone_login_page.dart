import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'QuizScreen.dart';

class PhoneLoginPage extends StatefulWidget {
  @override
  _PhoneLoginPageState createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  String _phoneNumber = '+91'; // Set "+91" as the default country code
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _loginWithPhoneNumber() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          // Authentication successful, show a success message
          _showAlertDialog('Login Successful', 'You have successfully logged in.');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Phone verification failed: $e');
          // Show an error message
          _showAlertDialog('Error', 'Phone verification failed: $e');
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Navigate to OTP verification page and pass verificationId
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPVerificationPage(verificationId: verificationId),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto retrieval timed out
        },
      );
    } catch (e) {
      print('Error during phone login: $e');
      // Show an error message
      _showAlertDialog('Error', 'Error during phone login: $e');
    }
  }

  Future<void> _showAlertDialog(String title, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Number Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _phoneNumber = '+91$value';
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter Phone Number',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loginWithPhoneNumber,
              child: Text('Login with Phone Number'),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPVerificationPage extends StatelessWidget {
  final String verificationId;

  OTPVerificationPage({required this.verificationId});

  final TextEditingController _otpController = TextEditingController();

  Future<void> _verifyOTP(BuildContext context) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: _otpController.text,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      // Show successful login pop-up
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Successful'),
            content: Text('You have successfully logged in.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the pop-up
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen(questionIndex: '',)), // Navigate to QuizScreen
                  );
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      print('Error during OTP verification: $e');
      // Handle verification error, show error message or take appropriate action
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Add the back arrow icon
          onPressed: () {
            Navigator.pop(context); // Navigate back when the icon is pressed
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP sent to your phone number',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              child: TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter OTP',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _verifyOTP(context),
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PhoneLoginPage(),
  ));
}
