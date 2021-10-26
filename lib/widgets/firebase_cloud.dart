// // ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:woka5_app/widgets/custom_border.dart';
// import 'package:woka5_app/widgets/custom_color.dart';
// import 'package:woka5_app/widgets/custom_text.dart';

// class AddUser extends StatelessWidget {
//   final namesController;
//   final countryController;
//   final phoneNumberController;
//   final stateController;
//   final cityController;
//   final professionController;

//   AddUser(
//       {this.namesController,
//       this.countryController,
//       this.phoneNumberController,
//       this.stateController,
//       this.cityController,
//       this.professionController});

//   @override
//   Widget build(BuildContext context) {
//     // Create a CollectionReference called users that references the firestore collection
//     CollectionReference users = FirebaseFirestore.instance.collection('users');

//     // ignore: unused_element
//     Future<void> addUser() async {
//       // Call the user's CollectionReference to add a new user
//       return users
//           .add({
//             'names': namesController.text,
//             'phoneNumber': phoneNumberController.text,
//             'country': countryController.text,
//             'state': stateController,
//             'city': cityController,
//             'profession': professionController.text
//           })
//           .then((value) => print("User Added"))
//           .catchError(
//             (error) => print("Failed to add user: $error"),
//           );
//     }

   
//     // return FlatButton(
//     //   onPressed: addUser,
//     //   child: Text(
//     //     "Add User",
//     //   ),
//     // );
//   }
// }
