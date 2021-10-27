// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/route/route.dart' as route;

class ViewProfilePage extends StatelessWidget {
  final url;
  ViewProfilePage({this.url});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: url,
      child: Image.network(url),
    );
  }
}
