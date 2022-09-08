import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_ai/pages/homepage.dart';

void main() 
{
  SystemChrome.setSystemUIOverlayStyle
  (
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );
  runApp(const MyApp());  
}

 
class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'Flutter app',
      theme: ThemeData
      (
        fontFamily: GoogleFonts.poppins().fontFamily
      ),
      debugShowCheckedModeBanner:false,
      home: const HomePage(),
    );
  }
}
