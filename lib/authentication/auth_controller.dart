import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woka5_app/main.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_spinner.dart';
import 'package:woka5_app/widgets/toaster.dart';

class AuthController {
  FirebaseAuth auth = FirebaseAuth.instance;
  UserCredential? Auser;
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  //  UserCredential get userFromAuth => Auser!;

  submitUserToFirebase(BuildContext context,
      {required TextEditingController firstName,
      required TextEditingController lastName,
      required TextEditingController email,
      required TextEditingController password}) async {
    UserCredential? firebaseUser;
    // firebaseUser = auth;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (builder) {
          return CustomSpinner(msg: 'Creating your account...').build(context);
        });

    try {
      // inspect(_emailController);
      // inspect(_passwordController);
      firebaseUser = await _fireBaseAuth.createUserWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          inspect(e);
          Navigator.of(context).pop();
          return ToasterMessages.show(context,
              'This email is already in use. Please try again with a unique email.');
        default:
          inspect(e);
          Navigator.of(context).pop();
          ToasterMessages.show(context,
              'An error occured. Please try with a unique email and phone');
      }
    }

    if (firebaseUser != null) {
      Map user = {
        'firstName': firstName.text.trim(),
        'lastName': lastName.text.trim(),
        'email': email.text.trim()
      };
      firebaseUser.user!.uid;
      userRef.child(firebaseUser.user!.uid).set(user);
      Navigator.of(context).pop();
      Auser = firebaseUser;
      ToasterMessages.show(context, 'Account Created Successfully');
      Navigator.of(context)
          .pushNamedAndRemoveUntil(route.loginPage, (route) => false);
    } else {
      Navigator.of(context).pop();
      ToasterMessages.show(context, 'An error occured!');
    }
  }

  // submitLoginDetailsToFirebase(BuildContext context) async {
  //   if (_emailController.text.trim().isEmpty) {
  //     return ToasterMessages.show(context, 'Please enter an email');
  //   }
  //   if (_passwordController.text.isEmpty) {
  //     return ToasterMessages.show(context, 'Please enter a password!');
  //   }
  //   print('${_emailController.text.trim()}, ${_passwordController.text}');

  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (builder) {
  //         return CustomSpinner(msg: 'Authenticating...').build(context);
  //       });

  //   try {
  //     UserCredential firebaseLoggedInUser =
  //         await _fireBaseAuth.signInWithEmailAndPassword(
  //             email: _emailController.text.trim(),
  //             password: _passwordController.text.trim());
  //     // print('${firebaseLoggedInUser.user.uid}');

  //     if (firebaseLoggedInUser != null) {
  //       print('${firebaseLoggedInUser.user}');
  //       //
  //       userRef
  //           .child(firebaseLoggedInUser.user!.uid)
  //           .once()
  //           .catchError((error, stackTrace) {
  //         inspect(error);
  //         inspect(stackTrace);
  //       }).then((DataSnapshot snapshot) {
  //         print('''$snapshot
  //                 ''');

  //         if (snapshot.value != null) {
  //           inspect(snapshot);
  //           Navigator.of(context).pop();
  //           Navigator.of(context).pushNamedAndRemoveUntil(
  //               route.bottomNavigatorPage, (route) => false);
  //         } else {
  //           // print('${snapshot.toString()}');
  //           _fireBaseAuth.signOut();
  //           ToasterMessages.show(context, 'Wrong email or password!');
  //         }
  //       });
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'invalid-email') {
  //       inspect(e);
  //       ToasterMessages.show(context,
  //           'The email you entered doesn\'t exist or is mispelled. Please try again with a valid email.');
  //       Navigator.of(context).pop();
  //     } else if (e.code == 'user-not-found') {
  //       print(e.code);
  //       ToasterMessages.show(context, 'No user was found with this email.');
  //       Navigator.of(context).pop();
  //     } else if (e.code == 'wrong-password') {
  //       print(e.code);
  //       ToasterMessages.show(context,
  //           'Wrong password. Please enter the correct password for this email');
  //       Navigator.of(context).pop();
  //     } else {
  //       print(e.code);
  //       ToasterMessages.show(context,
  //           'Please check that you have an active internet connection');
  //       Navigator.of(context).pop();
  //     }
  //   }
  // }

  void signOut(BuildContext context) async {
    await auth.signOut();
    Navigator.of(context).pushNamed(route.loginPage);
  }

  Future<String> resetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );
      return 'Email Sent to Email You Provided';
    } catch (e) {
      return 'Error Occured';
    }
  }
}
