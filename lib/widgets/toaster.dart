// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToasterMessages {
  static show(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: Duration(seconds: 4),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Text(
          msg,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )));
  }
}
