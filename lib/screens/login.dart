// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/authentication/auth.dart';
import 'package:woka5_app/main.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_spinner.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/widgets/toaster.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
bool isLoading = false;

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth? _fireBaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
          body: SafeArea(
        child: ListView(padding: EdgeInsets.all(4), children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CustomText(
                text: 'Log In',
                fontWeight: FontWeight.bold,
                color: black,
                size: 22,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: white,
              border: Border(
                bottom: borderSide,
                top: borderSide,
                right: borderSide,
                left: borderSide,
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('lib/images/google.png'),
                ),
                SizedBox(
                  width: 50,
                ),
                Center(
                    child: CustomText(
                  text: 'Log in with Google',
                  color: black,
                  size: 16,
                  fontWeight: FontWeight.bold,
                ))
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: white,
              border: Border(
                bottom: borderSide,
                top: borderSide,
                right: borderSide,
                left: borderSide,
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('lib/images/facebook.png'),
                ),
                SizedBox(
                  width: 50,
                ),
                Center(
                  child: CustomText(
                    text: 'Log in with Facebook',
                    color: black,
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 10,
            thickness: 5,
            color: grey,
            indent: 5,
            endIndent: 5,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: white,
              border: Border(
                bottom: borderSide,
                top: borderSide,
                right: borderSide,
                left: borderSide,
              ),
              borderRadius: borderRadius,
            ),
            child: TextFormField(
              controller: _emailController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Email',
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.name,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: white,
              border: Border(
                bottom: borderSide,
                top: borderSide,
                right: borderSide,
                left: borderSide,
              ),
              borderRadius: borderRadius,
            ),
            child: TextFormField(
              controller: _passwordController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.start,
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Remember me',
                        size: 16,
                        color: black,
                        fontWeight: FontWeight.normal,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: TextButton(
                          child: Center(
                            child: CustomText(
                              text: 'Forgot Password?',
                              size: 16,
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => Navigator.pushNamed(
                              context, route.resetPasswordPage),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Don/t have an account?',
                        size: 16,
                        color: black,
                        fontWeight: FontWeight.normal,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: TextButton(
                          child: Center(
                            child: CustomText(
                              text: 'Sign Up',
                              size: 16,
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, route.registerPage),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                bottom: borderSide,
                top: borderSide,
                right: borderSide,
                left: borderSide,
              ),
              borderRadius: borderRadius,
            ),
            child: TextButton(
                onPressed: () => submitLoginDetailsToFirebase(context),
                child: CustomText(
                  text: 'Continue',
                  color: white,
                  size: 18,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ]),
      )),
    );
  }

  void submitLoginDetailsToFirebase(BuildContext context) async {
    if (_emailController.text.trim().isEmpty)
      return ToasterMessages.show(context, 'Please enter an email');
    if (_passwordController.text.isEmpty)
      return ToasterMessages.show(context, 'Please enter a password!');
    print('${_emailController.text.trim()}, ${_passwordController.text}');

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (builder) {
          return CustomSpinner(msg: 'Authenticating...').build(context);
        });

    try {
      UserCredential firebaseLoggedInUser = await _fireBaseAuth!
          .signInWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim());
      // print('${firebaseLoggedInUser.user.uid}');

      if (firebaseLoggedInUser != null) {
        print('${firebaseLoggedInUser.user}');
        //
        userRef
            .child(firebaseLoggedInUser.user!.uid)
            .once()
            .catchError((error, stackTrace) {
          inspect(error);
          inspect(stackTrace);
        }).then((DataSnapshot snapshot) {
          print('''${snapshot}
                  ''');

          if (snapshot.value != null) {
            inspect(snapshot);
            Navigator.of(context).pop();
            Navigator.of(context).pushNamedAndRemoveUntil(
                route.bottomNavigatorPage, (route) => false);
          } else {
            // print('${snapshot.toString()}');
            _fireBaseAuth!.signOut();
            ToasterMessages.show(context, 'Wrong email or password!');
          }
        });
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        inspect(e);
        ToasterMessages.show(context,
            'The email you entered doesn\'t exist or is mispelled. Please try again with a valid email.');
        Navigator.of(context).pop();
      } else if (e.code == 'user-not-found') {
        print('${e.code}');
        ToasterMessages.show(context, 'No user was found with this email.');
        Navigator.of(context).pop();
      } else if (e.code == 'wrong-password') {
        print('${e.code}');
        ToasterMessages.show(context,
            'Wrong password. Please enter the correct password for this email');
        Navigator.of(context).pop();
      } else {
        print(e.code);
        ToasterMessages.show(context,
            'Please check that you have an active internet connection');
        Navigator.of(context).pop();
      }
    }
  }
}


// 
//  .onError((error, stackTrace) {
//           print('''  
//                ${error}
//                ${stackTrace}
//               ''');
//           return Exception(error);
//         }).




// setState(() {
//                             isLoading = true;
//                           });
//                           AuthProvider()
//                               .signIn(
//                             email: _emailController.text.trim(),
//                             password: _passwordController.text.trim(),
//                           )
//                               .then((value) {
//                             setState(() {
//                               isLoading = false;
//                             });
//                             if (value == 'Welcome to WOKA') {
//                               () => Navigator.pushNamed(
//                                   context, route.bottomNavigatorPage);
//                             } else {
//                               setState(() {
//                                 isLoading = false;
//                               });
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(
//                                   content: Text(value),
//                                 ),
//                               );
//                             }
//                           });
