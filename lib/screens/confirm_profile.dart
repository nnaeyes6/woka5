// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/route/route.dart' as route;

class ConfirmProfile extends StatefulWidget {
  const ConfirmProfile({Key? key}) : super(key: key);

  @override
  _ConfirmProfileState createState() => _ConfirmProfileState();
}

class _ConfirmProfileState extends State<ConfirmProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: CustomText(
          text: 'Woka Registration',
          color: white,
          fontWeight: FontWeight.bold,
          size: 25,
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            CustomText(
                text: 'Please tap to upload your profile pix',
                size: 18,
                fontWeight: FontWeight.w400,
                color: black),
            Center(
              child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: grey,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                    right: borderSide,
                    left: borderSide,
                  ),
                  borderRadius: BorderRadius.circular(360),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 57,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: borderRadius,
              ),
              child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.bottomNavigatorPage),
                  child: CustomText(
                    text: 'Continue',
                    color: white,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
