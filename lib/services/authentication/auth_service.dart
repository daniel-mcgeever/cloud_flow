// // import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:cloud_flow/models/user.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Create user object based on firebase user
//   CloudFlowUser _userFromFirebaseUser(User user) {
//     return user != null ? CloudFlowUser(uid: user.uid) : null;
//   }

//   // Auth change user stream
//   Stream<CloudFlowUser> get user {
//     return _auth.authStateChanges().map(_userFromFirebaseUser);
//   }

//   // Sign in anonymously
//   Future signInAnon() async {
//     try {
//       AuthResult result = await _auth.signInAnonymously();
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   // Sign in with email and password
//   Future signInWithEmailAndPassword(String email, String password) async {
//     try {
//       AuthResult result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   // Register with email and password
//   Future registerWithEmailAndPassword(
//     String firstName,
//     String secondName,
//     String contactNumber,
//     String email,
//     String password,
//   ) async {
//     try {
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   // Sign out
//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (e) {
//       print(e.toString);
//       return null;
//     }
//   }
// }
