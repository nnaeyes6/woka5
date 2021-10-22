// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: const CustomText(
              text: 'Profile',
              size: 22,
              fontWeight: FontWeight.w600,
              color: white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 2.0),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'lib/images/person.png',
                          ),
                        ),
                        color: grey,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              offset: Offset(2, 2),
                              color: Colors.yellow.shade900.withOpacity(0.2)),
                          BoxShadow(
                              blurRadius: 2,
                              offset: Offset(-2, -2),
                              color: Colors.yellow.shade900.withOpacity(0.2)),
                        ]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                      text: 'Michael B',
                      size: 22,
                      fontWeight: FontWeight.w600,
                      color: black)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Account',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    CustomText(
                        text: 'MichaelB@gmail.com',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Change Password',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Payment',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Promos',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Notifications',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Support',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                    Expanded(child: Container()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Gift Cards',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                  ),
                ),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Become a WOKA Artisan',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
