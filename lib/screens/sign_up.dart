// ignore_for_file: prefer_const_constructors, await_only_futures

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  _fetchCurrentUserData() async {
    final User? user = await auth.currentUser;

    if (user != null && user.email!.contains('@')) {
      inspect(user.email);
      Navigator.of(context).pushNamed(route.bottomNavigatorPage);
    }
  }

  @override
  void initState() {
    _fetchCurrentUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child:
              ListView(padding: EdgeInsets.fromLTRB(8, 50, 8, 50), children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: white,
                // ignore: prefer_const_literals_to_create_immutables
              ),
              child: SvgPicture.asset('lib/images/logo_blue.svg'),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(bottom: 50),
              child: Center(
                child: CustomText(
                  text: 'Sign Up for WOKA',
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
              height: 50,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
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
                    child: Image.asset(
                      'lib/images/google.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Center(
                      child: CustomText(
                    text: 'Sign Up with Google',
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
              height: 50,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
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
                    child: Image.asset(
                      'lib/images/facebook.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Center(
                    child: CustomText(
                      text: 'Sign Up with Facebook',
                      color: black,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 40),
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
                    child: Image.asset(
                      'lib/images/person.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, route.registerPage),
                      child: CustomText(
                        text: 'Sign Up with Email',
                        color: black,
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
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
                          text: 'Already have an account?',
                          size: 16,
                          color: black,
                          fontWeight: FontWeight.normal,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: TextButton(
                            child: Center(
                              child: CustomText(
                                text: 'Log In',
                                size: 16,
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, route.loginPage),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
