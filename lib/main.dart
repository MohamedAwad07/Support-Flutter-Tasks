import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/HomeLayout.dart';
import 'modules/HomePage/HomePage.dart';
import 'modules/Login Screen/LoginPage.dart';
import 'modules/Splash Screen/SplashScreen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
