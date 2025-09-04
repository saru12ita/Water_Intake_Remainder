import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_intake_remainder/Views/On_boarding_page.dart';

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
      title: 'Water_Intake Remainder',
      theme: ThemeData(
       textTheme: GoogleFonts.manropeTextTheme(
        Theme.of(context).textTheme,
       ),
       
      ),
      home:OnBoardingPage(),
    );
  }
}

