// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:woka5_app/route/bottom_navigator_bar.dart';
import 'package:woka5_app/screens/artisan_form.dart';
import 'package:woka5_app/screens/dashboard.dart';
import 'package:woka5_app/screens/home.dart';
import 'package:woka5_app/screens/jobs.dart';
import 'package:woka5_app/screens/login.dart';
import 'package:woka5_app/screens/messages.dart';
import 'package:woka5_app/screens/profile.dart';
import 'package:woka5_app/screens/register.dart';
import 'package:woka5_app/screens/reset_password.dart';
import 'package:woka5_app/screens/sign_up.dart';

//creating the Route Names
const String loginPage = 'login';
const String registerPage = 'register';
const String homePage = 'home';
const String signUpPage = 'signUp';
const String dashboardPage = 'dashboard';
const String resetPasswordPage = 'resetPassword';
const String artisanFormPage = 'artisanform';
const String bottomNavigatorPage = 'bottomNavigator';
const String profilePage = 'profile';
const String messagePage = 'meaasage';
const String jobsPage = 'jobs';

// creating the route CONTROLLER to control the route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (_) => LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (_) => Home());
    case signUpPage:
      return MaterialPageRoute(builder: (_) => SignUpPage());
    case dashboardPage:
      return MaterialPageRoute(builder: (_) => Dashboard());
    case resetPasswordPage:
      return MaterialPageRoute(builder: (_) => ResetPasswordPage());
    case artisanFormPage:
      return MaterialPageRoute(builder: (_) => ArtisanFormPage());
    case registerPage:
      return MaterialPageRoute(builder: (_) => RegisterPage());
    case bottomNavigatorPage:
      return MaterialPageRoute(builder: (_) => BottomNavigator());
    case jobsPage:
      return MaterialPageRoute(builder: (_) => JobsPage());
    case messagePage:
      return MaterialPageRoute(builder: (_) => MessagePage());
    case profilePage:
      return MaterialPageRoute(builder: (_) => ProfilePage());

    default:
      throw ('This route name does not exist');
  }
}
