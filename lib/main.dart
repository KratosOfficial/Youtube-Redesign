import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtuberedesined/Screens/Desktop/Desktop_HomePage.dart';
import 'package:youtuberedesined/Screens/Mobile/Mobile_HomePage.dart';
import 'package:youtuberedesined/Utils/Responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: ResponsiveLayout(
        desktopScaffold: Desktop_HomePage(),
        mobileScaffold: Mobile_HomePage(),
        tabletScaffold: Desktop_HomePage(),
      ),
    );
  }
}