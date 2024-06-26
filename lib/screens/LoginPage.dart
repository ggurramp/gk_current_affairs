import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gk_current_affairs/screens/phone_login_page.dart';
import 'ForgotPasswordPage.dart';
import 'HomePage.dart';
import 'SignUpPage.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences

void main() {
  runApp(MaterialApp(
    home: LoginPage(onLoginSuccess: () {}),
    routes: {
      '/signup': (context) => SignUpPage(),
      '/home': (context) => HomePage(),
    },
  ));
}

class LoginPage extends StatefulWidget {
  final Function() onLoginSuccess;

  LoginPage({required this.onLoginSuccess});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoggedIn = false;
  String? _userIdentifier;

  Future<void> _deleteAccount() async {
    try {
      await FirebaseAuth.instance.currentUser?.delete();
      _toggleLoggedIn(false);
      _getUserIdentifier();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account deleted successfully.'),
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete account: $e'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void _toggleLoggedIn(bool value) {
    setState(() {
      _isLoggedIn = value;
    });
  }

  void _getUserIdentifier() {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        _userIdentifier = user.email?.substring(0, 5);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login'),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (!_isLoggedIn)
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              if (!_isLoggedIn)
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              if (!_isLoggedIn)
                ElevatedButton(
                  onPressed: () async {
                    if (_isLoggedIn) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You are already logged in.'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      String enteredEmail = _emailController.text;
                      String enteredPassword = _passwordController.text;

                      try {
                        await _auth.signInWithEmailAndPassword(
                          email: enteredEmail,
                          password: enteredPassword,
                        );

                        // Set login state to true and save it in SharedPreferences
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isLoggedIn', true);

                        _toggleLoggedIn(true);
                        _getUserIdentifier();

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login failed: $e'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    }
                  },
                  child: Text('Login'),
                ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Text('Forgot Password?'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Create An Account'),
              ),
              if (_isLoggedIn)
                ElevatedButton(
                  onPressed: () async {
                    await _auth.signOut();

                    // Set login state to false and save it in SharedPreferences
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('isLoggedIn', false);

                    _toggleLoggedIn(false);
                  },
                  child: Text('Sign Out'),
                ),
              if (_isLoggedIn)
                ElevatedButton(
                  onPressed: () {
                    _deleteAccount();
                  },
                  child: Text('Delete Account'),
                ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                  // );
                },
                child: Text('Or'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhoneLoginPage()),
                  );
                },
                child: Text('Login with Mobile Number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
