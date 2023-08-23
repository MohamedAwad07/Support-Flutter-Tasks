import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/modules/Login%20Screen/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(
        const Duration(seconds: 3),() {
     Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) =>  LoginPage()));
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: Colors.grey[400],
     body :  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         decoration: BoxDecoration
           (
             borderRadius: BorderRadius.circular(40.0),
           color:  Colors.orange.shade900,
           boxShadow: [
             BoxShadow(
             color: Colors.grey.withOpacity(1.0),
             spreadRadius: 3,
             blurRadius: 12,
             offset: const Offset(0, 3),
           ),
           ],
         ),
         child: const Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children:
           [
             Image(image: AssetImage('assets/Talabat.png'),

             )
           ],
         ),
       ),
     )
    );
  }
}
