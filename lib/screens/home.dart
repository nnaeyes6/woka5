// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:woka5_app/authentication/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("lib/json/info.json")
        .then((value) {
      debugPrint(value);
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  // ignore: override_on_non_overriding_member
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: white,
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(Icons.location_on_outlined,
                size: 40, color: Colors.yellow[900]),
            onTap: () {},
          ),
          title: TextField(
            decoration: InputDecoration(
              label: CustomText(
                color: black,
                fontWeight: FontWeight.normal,
                size: 20,
                text: 'Washington',
              ),
            ),
          ),
          actions: [
            GestureDetector(
              child: Icon(
                Icons.search_rounded,
                size: 40,
                color: Colors.yellow[900],
              ),
              onTap: () {},
            ),
            TextButton(
              onPressed: () {
                AuthProvider().signOut(context);
              },
              child: Icon(Icons.logout_outlined,
                  size: 20, color: Colors.yellow[900]),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 10),
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I need assistace with',
                    style: TextStyle(color: black, fontSize: 20),
                  )
                ],
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(right: 10, top: 20),
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                    right: borderSide,
                    left: borderSide,
                  ),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, right: 8, top: 8, left: 12),
                      child: Icon(
                        Icons.search_rounded,
                        size: 30,
                        color: Colors.yellow.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: CustomText(
                        text: 'Try leaky Faucet or broken TV ',
                        color: black,
                        size: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    removeRight: true,
                    context: context,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: (info.length.toDouble() / 3).toInt(),
                        itemBuilder: (_, i) {
                          int a = 3 * i; //0, 2,
                          int b = 3 * i + 1; //1, 3,
                          int c = 3 * i + 2;
                          return Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      height: 160,
                                      margin: EdgeInsets.only(
                                          left: 5, right: 5, bottom: 5),
                                      width:
                                          (MediaQuery.of(context).size.width) /
                                              3,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            // fit: BoxFit.cover,
                                            image: AssetImage(
                                              info[a]['img'],
                                            ),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.3),
                                              offset: Offset(5, 5),
                                              blurRadius: 10,
                                            ),
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.1),
                                              offset: Offset(-5, -5),
                                              blurRadius: 5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            info[a]['title'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      height: 160,
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 5),
                                      width:
                                          (MediaQuery.of(context).size.width) /
                                              3,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(info[b]['img']),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.3),
                                              offset: Offset(5, 5),
                                              blurRadius: 5,
                                            ),
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.1),
                                              offset: Offset(-5, -5),
                                              blurRadius: 5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            info[b]['title'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      height: 160,
                                      margin:
                                          EdgeInsets.only(right: 10, bottom: 5),
                                      width:
                                          (MediaQuery.of(context).size.width) /
                                              3,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            // fit: BoxFit.cover,
                                            image: AssetImage(
                                              info[c]['img'],
                                            ),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.3),
                                              offset: Offset(5, 5),
                                              blurRadius: 10,
                                            ),
                                            BoxShadow(
                                              color: Colors.yellow.shade900
                                                  .withOpacity(0.1),
                                              offset: Offset(-5, -5),
                                              blurRadius: 5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            info[c]['title'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
