// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:woka5_app/route/route.dart' as route;
import 'package:woka5_app/widgets/custom_border.dart';
import 'package:woka5_app/widgets/custom_color.dart';
import 'package:woka5_app/widgets/custom_text.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: 'WELCOME TO WOKA ARTISAN',
                size: 26,
                fontWeight: FontWeight.bold,
                color: white),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                // ignore: prefer_const_literals_to_create_immutables
              ),
              child: SvgPicture.asset('lib/images/logo_blue.svg'),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: borderRadius,
              ),
              child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.confirmProfilePage),
                  child: CustomText(
                    text: 'SIGN UP FOR WOKA ARTISAN',
                    color: white,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: borderRadius,
              ),
              child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.registerPage),
                  child: CustomText(
                    text: 'SIGN UP FOR OTHER USERS',
                    color: white,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
