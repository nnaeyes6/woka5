// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: const CustomText(
              text: 'Messages',
              size: 22,
              fontWeight: FontWeight.bold,
              color: white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 2.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Colors.yellow.shade900,
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
                    child: Icon(
                      Icons.mail_outline_sharp,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                color: Colors.yellow.shade900.withOpacity(0.2)),
                            BoxShadow(
                                blurRadius: 2,
                                offset: Offset(-2, -2),
                                color: Colors.yellow.shade900.withOpacity(0.2)),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 20,
                      ),
                      height: 200,
                      width: 280,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Michael Bostick',
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: black),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                              text:
                                  'Thank you for your interest in my services. My rates are.... ',
                              size: 18,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              'lib/images/lady.png',
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
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 20,
                      ),
                      height: 200,
                      width: 280,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Akinbulejo Busayo',
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: black),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                              text:
                                  'Thank you for your interest in my services. My rates are.... ',
                              size: 18,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: white,
                  border: Border(
                    bottom: borderSide,
                    top: borderSide,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              'lib/images/perso.png',
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
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 20,
                      ),
                      height: 200,
                      width: 280,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Anya Mbah',
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: black),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                              text:
                                  'Thank you for your interest in my services. My rates are.... ',
                              size: 18,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CustomText(
                        text: 'Ask WOKA',
                        size: 30,
                        fontWeight: FontWeight.bold,
                        color: black)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                padding: EdgeInsets.all(8),
                height: 50,
                width: 400,
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
                    Icon(
                      Icons.search_rounded,
                      size: 30,
                      color: Colors.yellow.shade900,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                        text: 'How do I get a refund?',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: black)
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
