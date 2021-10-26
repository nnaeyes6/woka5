// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

// ignore: use_key_in_widget_constructors
class ArtisanFormPage extends StatefulWidget {
  @override
  State<ArtisanFormPage> createState() => _ArtisanFormPageState();
}

class _ArtisanFormPageState extends State<ArtisanFormPage> {
  CollectionReference wokaUsers =
      FirebaseFirestore.instance.collection('wokaUsers');
  final TextEditingController _namesController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _stateController = TextEditingController();

  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  final TextEditingController _professionController = TextEditingController();

  bool _showPassword = false;

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _cityController.dispose();
    _namesController.dispose();
    _phoneController.dispose();
    _professionController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    super.dispose();
  }

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
                      controller: _namesController,
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
                      controller: _phoneController,
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
                      controller: _emailController,
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
                      controller: _countryController,
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
                      controller: _stateController,
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
                      controller: _cityController,
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
                      controller: _professionController,
                      decoration: InputDecoration(
                        hintText: 'What do you do?  / Select Profession',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 57,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: borderRadius,
              ),
              child: TextButton(
                  onPressed: () {
                    Map<String, dynamic> data = {
                      'names': _namesController,
                      'email': _emailController,
                      'password': _passwordController,
                      'phoneNumber': _phoneController,
                      'country': _countryController,
                      'state': _stateController,
                      'city': _cityController,
                      'profession': _professionController,
                    };
                    FirebaseFirestore.instance
                        .collection('wokaUsers')
                        .add(data);
                    print('hello world');

                    Navigator.pushNamed(context, route.confirmProfilePage);
                  },
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
    );
  }
}
