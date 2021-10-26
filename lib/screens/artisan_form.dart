// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:woka5_app/authentication/auth_controller.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/widgets/toaster.dart';

// ignore: use_key_in_widget_constructors
class ArtisanFormPage extends StatefulWidget {
  @override
  State<ArtisanFormPage> createState() => _ArtisanFormPageState();
}

class _ArtisanFormPageState extends State<ArtisanFormPage> {
  CollectionReference wokaUsers =
      FirebaseFirestore.instance.collection('wokaUsers');

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _stateController = TextEditingController();

  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  final TextEditingController _professionController = TextEditingController();

  bool _showPassword = false;

  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _cityController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
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
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _firstNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Enter your first name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: 'First Name'),
                  )
                ],
              )),
        ),
      ),
    );
  }
}



// Container(
//               padding: EdgeInsets.all(2),
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               child: Column(children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(1),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 0,
//                           left: 16,
//                         ),
//                         child: CustomText(
//                             text: 'User Details',
//                             size: 20,
//                             fontWeight: FontWeight.bold,
//                             color: black),
//                       ),
//                       Container(
//                         height: 45,
//                         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                         padding: EdgeInsets.all(8.0),
//                         decoration: BoxDecoration(
//                           color: white,
//                           border: Border(
//                             bottom: borderSide,
//                             top: borderSide,
//                             right: borderSide,
//                             left: borderSide,
//                           ),
//                         ),
//                         child: TextFormField(
//                           controller: _firstNameController,
//                           decoration: InputDecoration(
//                             hintText: 'First Name',
//                             border: InputBorder.none,
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter correct name';
//                             }
//                           },
//                         ),
//                       ),
//                       //       SizedBox(
//                       //         height: 1,
//                       //       ),s
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _lastNameController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'Last Name',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           validator: (value) {
//                       //             if (value!.isEmpty ||
//                       //                 RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                       //               return 'Please enter correct name';
//                       //             }
//                       //           },
//                       //         ),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 1,
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           validator: (value) {
//                       //             if (value!.isEmpty ||
//                       //                 RegExp(r'^[+]*[(]{0,1}[0,9]{1,4}[)]{0,1}[-\s\./0-9]]+$')
//                       //                     .hasMatch(value)) {
//                       //               return 'Please enter correct number';
//                       //             }
//                       //             return '';
//                       //           },
//                       //           controller: _phoneController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'Phone Number',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           // validator: (value) {
//                       //           //   if (value!.isEmpty ||
//                       //           //       RegExp(r'^[+]*[(]{0,1}[0,9]{1,4}[)]{0,1}[-\s\./0-9]]+$')
//                       //           //           .hasMatch(value)) {
//                       //           //     return 'Please enter correct number';
//                       //           //   }
//                       //           // },
//                       //         ),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 1,
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _emailController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'Email',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           // validator: (value) {
//                       //           //   if (value!.isEmpty ||
//                       //           //       RegExp(r'^[\w-\.]+@([\w-\]+\.)+[\w]{2,4}')
//                       //           //           .hasMatch(value)) {
//                       //           //     return 'Please enter a valid email';
//                       //           //   }
//                       //           // },
//                       //         ),
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _passwordController,
//                       //           obscureText: _obscureText,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'Password',
//                       //             suffixIcon: IconButton(
//                       //                 icon: _showPassword
//                       //                     ? Icon(Icons.visibility)
//                       //                     : Icon(Icons.visibility_off),
//                       //                 onPressed: () => setState(() {
//                       //                       _obscureText = !_obscureText;
//                       //                       _showPassword = !_showPassword;
//                       //                     })),
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           // validator: (value) {
//                       //           //   if (value!.isEmpty &&
//                       //           //       RegExp(r'^[a-z A-Z]+$').hasMatch(value) &&
//                       //           //       value.length >= 5) {
//                       //           //     return 'Please enter a correct Password';
//                       //           //   }
//                       //           // },
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: 1,
//                       // ),
//                       // Container(
//                       //   padding: EdgeInsets.all(1),
//                       //   child: Column(
//                       //     crossAxisAlignment: CrossAxisAlignment.start,
//                       //     children: [
//                       //       Padding(
//                       //         padding: const EdgeInsets.only(top: 0, left: 15),
//                       //         child: CustomText(
//                       //             text: 'Others',
//                       //             size: 20,
//                       //             fontWeight: FontWeight.bold,
//                       //             color: black),
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _countryController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'Country',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //         ),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 1,
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _stateController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'State',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           // validator: (value) {
//                       //           //   if (value!.isEmpty ||
//                       //           //       RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                       //           //     return 'Name is not correct';
//                       //           //   }
//                       //           // },
//                       //         ),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 1,
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _cityController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'City',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           // validator: (value) {
//                       //           //   if (value!.isEmpty ||
//                       //           //       RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                       //           //     return 'Name is not correct';
//                       //           //   }
//                       //           // },
//                       //         ),
//                       //       ),
//                       //       Container(
//                       //         height: 45,
//                       //         margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                       //         padding: EdgeInsets.all(8.0),
//                       //         decoration: BoxDecoration(
//                       //           color: white,
//                       //           border: Border(
//                       //             bottom: borderSide,
//                       //             top: borderSide,
//                       //             right: borderSide,
//                       //             left: borderSide,
//                       //           ),
//                       //         ),
//                       //         child: TextFormField(
//                       //           controller: _professionController,
//                       //           decoration: InputDecoration(
//                       //             hintText: 'What do you do?  / Select Profession',
//                       //             border: InputBorder.none,
//                       //           ),
//                       //           validator: (value) {
//                       //             if (value!.isEmpty ||
//                       //                 RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                       //               return 'Name is not correct';
//                       //             }
//                       //           },
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       SizedBox(height: 5),
//                       Container(
//                         height: 57,
//                         margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
//                         padding: EdgeInsets.all(4.0),
//                         decoration: BoxDecoration(
//                           color: Colors.yellow.shade900,
//                           borderRadius: borderRadius,
//                         ),
//                         child: TextButton(
//                             onPressed: () {
//                               if (!_formKey.currentState!.validate()) {
//                                 ToasterMessages.show(
//                                     context, 'Please all fields are required!');

//                                 return;
//                               }

//                               // Map<String, dynamic> data = {
//                               //   'firstName': _firstNameController.text,
//                               //   'lastName': _lastNameController.text,
//                               //   'email': _emailController.text,
//                               //   'password': _passwordController.text,
//                               //   'phoneNumber': _phoneController.text,
//                               //   'country': _countryController.text,
//                               //   'state': _stateController.text,
//                               //   'city': _cityController.text,
//                               //   'profession': _professionController.text,
//                               // };

//                               // wokaUsers.add(data).then((value) {
//                               //   inspect(value);
//                               //   ToasterMessages.show(context,
//                               //       'Your User profile was successfully created!');
//                               // }).catchError((onError) => print(onError));

//                               Navigator.pushNamed(
//                                   context, route.confirmProfilePage);
//                             },
//                             child: CustomText(
//                               text: 'Submit',
//                               color: white,
//                               size: 18,
//                               fontWeight: FontWeight.bold,
//                             )),
//                       ),
//                     ],
//                   ),
//                 ),
//               ])),
