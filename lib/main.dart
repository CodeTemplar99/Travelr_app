// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelr/constants.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:travelr/constants.dart';
import 'package:travelr/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelr App',
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          textTheme:
              GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
