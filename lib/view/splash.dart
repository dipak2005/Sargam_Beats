// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "Home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff208EBA),
            Color(0xff416DFF),
            // Color(0xff2242FF),
            Color(0xff136DFF),
            Color(0xff2492FF),
            Color(0xff17B7FF),
            Color(0xff136DFF),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
            child: Image.asset(
          "assets/images/sargam1.png",
          width: MediaQuery.sizeOf(context).width * 0.9,
        )),
      ),
    );
  }
}
