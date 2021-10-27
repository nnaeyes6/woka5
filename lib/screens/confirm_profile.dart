// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';
import 'package:woka5_app/route/route.dart' as route;

class ConfirmProfilePage extends StatefulWidget {
  const ConfirmProfilePage({Key? key}) : super(key: key);

  @override
  _ConfirmProfilePageState createState() => _ConfirmProfilePageState();
}

class _ConfirmProfilePageState extends State<ConfirmProfilePage> {
  ImagePicker _image = ImagePicker();
  String url = '';
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
    // uploading to firestore
    await FirebaseFirestore.instance
        .collection('images')
        .doc()
        .set({'imageUrl': url});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
                onPressed: () {
                  _uploadFile();
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
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('images').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                return GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    primary: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 6),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (_, i) {
                      QueryDocumentSnapshot x = snapshot.data!.docs[i];
                      if (snapshot.hasData) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, route.viewProfilePage);
                            url:
                            x['imageUrl'];
                          },
                          child: Hero(
                            tag: x['imageUrl'],
                            child: Card(
                              child: Image.network(
                                x['imageUrl'],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
