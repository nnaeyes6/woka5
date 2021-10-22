// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: const CustomText(
              text: 'Jobs',
              size: 22,
              fontWeight: FontWeight.bold,
              color: white),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 2.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('CURRENT'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('PAST'),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(bottom: 15, right: 15, left: 15, top: 3),
                  padding: EdgeInsets.all(8.0),
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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Painting',
                              size: 20,
                              fontWeight: FontWeight.w600,
                              color: black),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                  text: 'Tuesday - 10/14/2021',
                                  size: 18,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                  text: '10:30am',
                                  size: 18,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.map_outlined,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                    text: 'North Powell',
                                    size: 18,
                                    fontWeight: FontWeight.w400,
                                    color: black),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            height: 80,
                            width: 80,
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
                                      color: Colors.yellow.shade900
                                          .withOpacity(0.2)),
                                  BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(-2, -2),
                                      color: Colors.yellow.shade900
                                          .withOpacity(0.2)),
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: CustomText(
                                text: 'Josh P',
                                size: 18,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(bottom: 15, right: 15, left: 15, top: 3),
                  padding: EdgeInsets.all(8.0),
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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Painting',
                              size: 20,
                              fontWeight: FontWeight.w600,
                              color: black),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                  text: 'Tuesday - 10/14/2021',
                                  size: 18,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                  text: '10:30am',
                                  size: 18,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.map_outlined,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                    text: 'North Powell',
                                    size: 18,
                                    fontWeight: FontWeight.w400,
                                    color: black),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            height: 80,
                            width: 80,
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
                                      color: Colors.yellow.shade900
                                          .withOpacity(0.2)),
                                  BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(-2, -2),
                                      color: Colors.yellow.shade900
                                          .withOpacity(0.2)),
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: CustomText(
                                text: 'Josh P',
                                size: 18,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                        ],
                      ),
                    ],
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
