// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:woka5_app/authentication/auth_controller.dart';
import 'package:woka5_app/screens/confirm_profile.dart';
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
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _stateController = TextEditingController();

  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _imgUrlController = TextEditingController();

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
    _imgUrlController.dispose();
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
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: 'User Details',
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: black),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _firstNameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your first name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'First Name'),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter yoyur phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 1,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
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
                    TextFormField(
                      controller: _countryController,
                      decoration: InputDecoration(
                        hintText: 'Country',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Country';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _stateController,
                      decoration: InputDecoration(
                        hintText: 'State',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your state';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        hintText: 'City',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _professionController,
                      decoration: InputDecoration(
                        hintText: 'What do you do?  / Select Profession',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // AuthController()
                          return 'Enter your city';
                        }
                        return null;
                      },
                    ),
                  ],
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
                        if (!_formKey.currentState!.validate()) {
                          ToasterMessages.show(
                              context, 'Please all fields are required!');

                          return;
                        }

                        // Map<String, dynamic> data = {
                        //   'firstName': _firstNameController.text,
                        //   'lastName': _lastNameController.text,
                        //   'email': _emailController.text,
                        //   'password': _passwordController.text,
                        //   'phoneNumber': _phoneController.text,
                        //   'country': _countryController.text,
                        //   'state': _stateController.text,
                        //   'city': _cityController.text,
                        //   'profession': _professionController.text,
                        //   'imgUrl': _imgUrlController.text,
                        // };

                        // wokaUsers.add(data).then((value) {
                        //   inspect(value);
                        //   ToasterMessages.show(context,
                        //       'Your User profile was successfully created!');
                        // }).catchError((onError) => print(onError));

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmProfilePage(
                                      firstName: _firstNameController.text,
                                      lastName: _lastNameController.text,
                                      email: _emailController.text,
                                      city: _cityController.text,
                                      country: _countryController.text,
                                      phoneNumber: _phoneController.text,
                                      profession: _professionController.text,
                                      state: _stateController.text,
                                      password: _passwordController.text,
                                    )));
                      },
                      child: Center(
                        child: CustomText(
                          text: 'Submit',
                          color: white,
                          size: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      )),
    );

//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 16.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Validate returns true if the form is valid, or false otherwise.
//                         if (_formKey.currentState!.validate()) {
//                           // If the form is valid, display a snackbar. In the real world,
//                           // you'd often call a server or save the information in a database.
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('Processing Data')),
//                           );
//                         }
//                       },
//                       child: const Text('Submit'),
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
  }
}
