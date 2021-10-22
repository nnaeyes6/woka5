
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  

  const CustomText({required this.text,  required this.size,  required this.fontWeight,  required this.color,});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: size, color: color, fontWeight: fontWeight,
      ),
       
      );
 
  }
}