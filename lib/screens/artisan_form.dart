// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_border.dart';

import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

// ignore: use_key_in_widget_constructors
class ArtisanFormPage extends StatefulWidget {
  @override
  State<ArtisanFormPage> createState() => _ArtisanFormPageState();
}

class _ArtisanFormPageState extends State<ArtisanFormPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: CustomText(
          text: 'Registration',
          color: white,
          fontWeight: FontWeight.bold,
          size: 25,
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(4),
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
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
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'Names',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'Select Country',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'State',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'City',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 45,
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
                decoration: InputDecoration(
                  hintText: 'Select Profession',
                  border: InputBorder.none,
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
                color: Colors.yellow.shade900,
                borderRadius: borderRadius,
              ),
              child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.loginPage),
                  child: CustomText(
                    text: 'Submit',
                    color: white,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
            backgroundColor: white,
            fixedColor: black,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: black,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail_outline_rounded,
                  color: black,
                ),
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                  color: black,
                ),
                label: ('Message'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add_alt_1_rounded,
                  color: black,
                ),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }
}
