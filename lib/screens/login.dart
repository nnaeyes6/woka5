// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, void_checks, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/authentication/auth_controller.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
bool _showPassword = false;
bool _obscureText = true;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                onPressed: () =>
                    AuthController().submitLoginDetailsToFirebase(context),
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
}
