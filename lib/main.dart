import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:flutter_google_clone_own/responsive/mobile_screen_layout.dart';
import 'package:flutter_google_clone_own/responsive/responsive_layout_screen.dart';
import 'package:flutter_google_clone_own/responsive/web_screen_layout.dart';
import 'package:flutter_google_clone_own/screens/search_screen.dart';

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
      title: 'Google clone',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutScreen(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
