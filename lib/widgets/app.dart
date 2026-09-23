import 'package:flutter/material.dart';
import 'package:insta_renaz/pages/home_page.dart';



class instagramApp extends StatelessWidget {
  const instagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Instagram',
     theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        brightness: Brightness.light
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true
     ),
     home: HomePage()
    );
  }                 
}
