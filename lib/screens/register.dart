// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/authentication/auth_controller.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_border.dart';

import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

// ignore: use_key_in_widget_constructors
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // get reference to global firebase auth instance
  // final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
          body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(4),
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(top: 40),
              child: Center(
                  child: CustomText(
                text: 'Register',
                fontWeight: FontWeight.bold,
                color: black,
                size: 22,
              )),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 57,
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
              child: TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  hintText: 'First Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 57,
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
              child: TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 57,
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
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 57,
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
              child: TextFormField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      icon: _showPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () => setState(() {
                            _obscureText = !_obscureText;
                            _showPassword = !_showPassword;
                          })),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // CustomText(
                //   text: 'Password must be at least 8 caracters long.',
                //   color: black,
                //   size: 14,
                //   fontWeight: FontWeight.w600,
                // ),
                // CustomText(
                //   text: 'Password must contain a special caracters.',
                //   color: black,
                //   size: 14,
                //   fontWeight: FontWeight.w600,
                // ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 57,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                  onPressed: () => AuthController().submitUserToFirebase(
                      context,
                      firstName: _firstNameController,
                      lastName: _lastNameController,
                      email: _emailController,
                      password: _passwordController),
                  child: CustomText(
                    text: 'Continue',
                    color: white,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: '           By Continuing, you agree to our',
                      size: 16,
                      color: black,
                      fontWeight: FontWeight.normal,
                    ),
                    TextButton(
                      child: Center(
                        child: CustomText(
                          text: 'Terms &',
                          size: 16,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, route.resetPasswordPage),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: TextButton(
                        child: CustomText(
                          text: 'Conditions',
                          size: 16,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, route.resetPasswordPage),
                      ),
                    ),
                    CustomText(
                      text: 'and our',
                      size: 16,
                      color: black,
                      fontWeight: FontWeight.normal,
                    ),
                    TextButton(
                      child: CustomText(
                        text: 'Privacy Policy',
                        size: 16,
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, route.resetPasswordPage),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
              child: Row(
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
      )
          // : Center(
          //     child: CircularProgressIndicator(),
          //   ),
          ),
    );
  }

  // submitUserToFirebase(BuildContext context) async {
  //   UserCredential? firebaseUser;
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (builder) {
  //         return CustomSpinner(msg: 'Creating your account...').build(context);
  //       });

  //   try {
  //     inspect(_emailController);
  //     inspect(_passwordController);
  //     firebaseUser = await _fireBaseAuth.createUserWithEmailAndPassword(
  //         email: _emailController.text.trim(),
  //         password: _passwordController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     switch (e.code) {
  //       case 'email-already-in-use':
  //         inspect(e);
  //         Navigator.of(context).pop();
  //         return ToasterMessages.show(context,
  //             'This email is already in use. Please try again with a unique email.');
  //       default:
  //         inspect(e);
  //         Navigator.of(context).pop();
  //         ToasterMessages.show(context,
  //             'An error occured. Please try with a unique email and phone');
  //     }
  //   }

  //   if (firebaseUser != null) {
  //     Map user = {
  //       'firstName': _firstNameController.text.trim(),
  //       'lastName': _lastNameController.text.trim(),
  //       'email': _emailController.text.trim()
  //     };
  //     firebaseUser.user!.uid;
  //     userRef.child(firebaseUser.user!.uid).set(user);
  //     Navigator.of(context).pop();
  //     ToasterMessages.show(context, 'Account Created Successfully');
  //     Navigator.of(context)
  //         .pushNamedAndRemoveUntil(route.loginPage, (route) => false);
  //   } else {
  //     Navigator.of(context).pop();
  //     ToasterMessages.show(context, 'An error occured!');
  //   }
  // }
}
