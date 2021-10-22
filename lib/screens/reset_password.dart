// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/authentication/auth.dart';
import 'package:woka5_app/screens/login.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/route/route.dart' as route;

// ignore: use_key_in_widget_constructors
class ResetPasswordPage extends StatefulWidget {
  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

TextEditingController _userNameController = TextEditingController();

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        body: !isLoading
            ? SafeArea(
                child: ListView(
                  children: [
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
                        controller: _userNameController,
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
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                            });
                            AuthProvider()
                                .resetPassword(
                              email: _userNameController.text.trim(),
                            )
                                .then((value) {
                              setState(() {
                                isLoading = false;
                              });
                              if (value == 'Email Sent to Email You Provided') {
                                () => Navigator.pushNamed(
                                    context, route.homePage);
                              } else {
                                setState(() {
                                  isLoading = false;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(value),
                                  ),
                                );
                              }
                            });
                          },
                          child: CustomText(
                            text: 'Reset Password',
                            color: white,
                            size: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
