import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditator_app/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditate App Flutter",
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      home: MainScreen(),
    );
  }
}
