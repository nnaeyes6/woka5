// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/route/route.dart' as route;

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        body: ElevatedButton(
          child: Center(
            child: Text('Go to  Sing Up Page'),
          ),
          onPressed: () => Navigator.pushNamed(context, route.signUpPage),
        ),
      ),
    );
  }
}
