import 'package:flutter/material.dart';
import 'package:linkedin_clone/Respons/responsiveness.dart';
import 'package:linkedin_clone/Screens/Mobile_Screen_Layout.dart';
import 'package:linkedin_clone/Screens/Web_Screen_Layout.dart';
import 'package:linkedin_clone/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home:const  ResponsiveLayout(mobileScreenLaout: MobileScreenLayout(),
       webScreenLaout: WebScreenLayout())
    );
  }
}