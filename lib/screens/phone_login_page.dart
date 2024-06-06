import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'HomePage.dart';
import 'QuizScreen.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';


class PhoneLoginPage extends StatefulWidget {
  @override
  _PhoneLoginPageState createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  String _selectedCountryCode = '+91';
  String _mobileNumber = '';
  bool _isLoggedIn = false;

  List<String> _countryCodes = [
    '+91', // India
    '+1',  // United States
    '+44', // United Kingdom
    '+86', // China
    '+81', // Japan
    '+61', // Australia
    '+52', // Mexico
    '+27', // South Africa
    '+7',  // Russia
    '+55', // Brazil
    '+60', // Malaysia
  ];

  @override
  void initState() {
    super.initState();
    _checkLoggedInStatus();
  }

  Future<void> _checkLoggedInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    });
  }

  Future<void> _loginWithPhoneNumber() async {
    try {
      String _phoneNumber = _selectedCountryCode + _mobileNumber;

      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: _phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          _showAlertDialog('Error', 'Failed to send OTP: ${e.message}');
        },
        codeSent: (String verificationId, int? resendToken) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPVerificationPage(
                verificationId: verificationId,
                phoneNumber: _phoneNumber,
                onLoginSuccess: () {
                  _toggleLoggedIn(true);
                },
              ),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      print('Error during phone login: $e');
      _showAlertDialog('Error', 'Error during phone login: $e');
    }
  }

  void _toggleLoggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLoggedIn = value;
      prefs.setBool('isLoggedIn', value);
    });
  }
  void _navigateToHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Select Country Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedCountryCode,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCountryCode = newValue!;
                  });
                },
                items: _countryCodes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text(
                'Enter Mobile Number',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _mobileNumber = value;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isLoggedIn ? null : _loginWithPhoneNumber,
                child: Text('Login with Phone Number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class OTPVerificationPage extends StatefulWidget {
  final String verificationId;
  final String phoneNumber;
  final Function() onLoginSuccess; // Add onLoginSuccess callback
  OTPVerificationPage({required this.verificationId, required this.phoneNumber, required this.onLoginSuccess});

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  final TextEditingController _otpController = TextEditingController();
  late String _verificationId;
  bool _otpResent = false;

  @override
  void initState() {
    super.initState();
    _verificationId = widget.verificationId;
  }

  Future<void> _verifyOTP(BuildContext context) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: _otpController.text,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      // Show success dialog and navigate to next screen
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Successful'),
            content: Text('You have successfully logged in.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();

                      widget.onLoginSuccess(); // Trigger onLoginSuccess callback


                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Handle verification failure
      print('Error during OTP verification: $e');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Error during OTP verification: ${e.toString()}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _resendOTP() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: widget.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            _otpResent = true;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('OTP Resent'),
          ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      // Handle OTP resend failure
      print('Error during OTP resend: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error during OTP resend: $e'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
            SizedBox(height: 10),
            _otpResent
                ? Text(
              'OTP Resent',
              style: TextStyle(color: Colors.green),
            )
                : TextButton(
              onPressed: () => _resendOTP(),
              child: Text('Resend OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
