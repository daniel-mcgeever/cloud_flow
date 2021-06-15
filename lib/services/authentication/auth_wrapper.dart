import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum AuthState { first_time, logged_in, logged_out }

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  AuthState authState = AuthState.logged_out;

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        setState(() {
          authState = AuthState.logged_out;
        });
      } else {
        setState(() {
          authState = AuthState.logged_in;
        });
      }
    });
    if (authState == AuthState.logged_in) {
      return Container(
        child: Text('Logged in'),
      );
    } else {
      // TODO Include a state in which the first time intro plays
      return Container(
        child: Text('Logged out'),
      );
    }
  }
}
