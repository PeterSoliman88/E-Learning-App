import 'package:flutter/material.dart';
import 'package:manasa/Screens/CourseDetails.dart';
import 'package:manasa/Screens/Courses.dart';
import 'package:manasa/Screens/HomeScreen.dart';
import 'package:manasa/Screens/NewPass.dart';
import 'package:manasa/Screens/OtpVerification.dart';
import 'package:manasa/Screens/WelcomeScreen.dart';
import 'package:manasa/Screens/buyCourse.dart';
import 'package:manasa/Screens/forgotPass.dart';
import 'package:manasa/Screens/newCard.dart';

import 'Components/theme.dart';
import 'Screens/SignIN.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
initialRoute: Welcome.routeName,
      routes: {
        Welcome.routeName: (context) => Welcome(),
        Signin.routeName: (context) => Signin(),
        Otpverification.routeName: (context) => Otpverification(),
        forgotPass.routeName: (context) => forgotPass(),
        Newpass.routeName: (context) => Newpass(),
        home.routeName: (context) => home(),
        Courses.routeName: (context) => Courses(),
        Coursedetails.routeName: (context) => Coursedetails(),
        buyCourse.routeName: (context) => buyCourse(),
        addCard.routeName: (context) => addCard(),


      },
    );
  }

}


