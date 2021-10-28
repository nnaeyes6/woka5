// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:woka5_app/authentication/auth_controller.dart';
import 'package:woka5_app/widgets/toaster.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/route/route.dart' as route;

class ConfirmProfilePage extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;

  final String country;
  final String state;

  final String city;
  final String profession;
  final String password;

  ConfirmProfilePage(
      {required this.firstName,
      required this.lastName,
      required this.city,
      required this.country,
      required this.email,
      required this.phoneNumber,
      required this.profession,
      required this.state,
      required this.password});

  @override
  _ConfirmProfilePageState createState() => _ConfirmProfilePageState();
}

class _ConfirmProfilePageState extends State<ConfirmProfilePage> {
  CollectionReference wokaUsers =
      FirebaseFirestore.instance.collection('wokaUsers');

  final ImagePicker _image = ImagePicker();
  String url = '';
  String? urlFromStorage;
  File? _file;
  Future<File?> _selectImage() async {
    var _img = await _image.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(_img!.path);
    });
  }

  Future _uploadFile() async {
    var _imageFile =
        FirebaseStorage.instance.ref().child('path').child('/.jpg');
    UploadTask task = _imageFile.putFile(_file!);
    TaskSnapshot snapshot = await task;
    // for downloading
    url = await snapshot.ref.getDownloadURL();
    print(url);
    setState(() {
      urlFromStorage = url;
    });
    // uploading to firestore
    await FirebaseFirestore.instance
        .collection('wokaUsers')
        .doc()
        .set({'imageUrl': url});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: 'WOKA profile picture',
                size: 22,
                fontWeight: FontWeight.bold,
                color: white),
            InkWell(
              onTap: () {
                _selectImage();
              },
              child: Center(
                child: CircleAvatar(
                  backgroundImage: _file == null
                      ? AssetImage('lib/images/unsplash.jpg')
                      : FileImage(File(_file!.path)) as ImageProvider,
                  radius: 80,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 150,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () async {
                  ToasterMessages.show(context, 'Uploading Image to storage..');
                  //
                  await _uploadFile();
                  Map<String, dynamic> data = {
                    'firstName': widget.firstName,
                    'lastName': widget.lastName,
                    'email': widget.email,
                    'password': widget.password,
                    'phoneNumber': widget.phoneNumber,
                    'country': widget.country,
                    'state': widget.state,
                    'city': widget.city,
                    'profession': widget.profession,
                    'imgUrl': urlFromStorage,
                  };
                  wokaUsers.add(data).then((value) {
                    inspect(value);
                    ToasterMessages.show(
                        context, 'Your User profile was successfully created!');
                  }).catchError((onError) => print(onError));

                  // Navigator.of(context).pop();
                  print(widget.firstName);
                  print(widget.city);
                  print(urlFromStorage);

                  // AuthController().submitUserToFirebase(context,
                  //     firstName: _firstNameController,
                  //     lastName: _lastNameController,
                  //     email: _emailController,
                  //     password: _passwordController);
                  //
                  // Map<String, dynamic> data = {
                  //     'firstName': _firstNameController.text,
                  //     'lastName': _lastNameController.text,
                  //     'email': _emailController.text,
                  //     'password': _passwordController.text,
                  //     'phoneNumber': _phoneController.text,
                  //     'country': _countryController.text,
                  //     'state': _stateController.text,
                  //     'city': _cityController.text,
                  //     'profession': _professionController.text,
                  //     'imgUrl': _imgUrlController.text,
                  //   };

                  // wokaUsers.add(data).then((value) {
                  //   inspect(value);
                  //   ToasterMessages.show(
                  //       context, 'Your User profile was successfully created!');
                  // }).catchError((onError) => print(onError));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            //  for showing images in our apps
            //   StreamBuilder(
            //       stream: FirebaseFirestore.instance.collection('images').snapshots(),
            //       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            //         return GridView.builder(
            //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisCount: 2),
            //             itemCount: snapshot.data!.docs.length,
            //             itemBuilder: (_, i) {
            //               QueryDocumentSnapshot x = snapshot.data!.docs[i];
            //               if (snapshot.hasData) {
            //                 return Card(
            //                   child: Image.network(x['imageUrl']),
            //                 );
            //               }
            //               return Center(
            //                 child: CircularProgressIndicator(),
            //               );
            //             });
            //       })
            // ]),
          ]),
    );
  }
}
