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
          text: 'Woka Registration',
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
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      left: 16,
                    ),
                    child: CustomText(
                        text: 'User Details',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: black),
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
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
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
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 15),
                    child: CustomText(
                        text: 'Others',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: black),
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
                        hintText: 'Country',
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
                        hintText: 'What do you do?  / Select Profession',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
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
                      Navigator.pushNamed(context, route.confirmProfilePage),
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
