// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Podcast extends StatefulWidget {
  const Podcast({super.key});

  @override
  State<Podcast> createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff0F2957),

      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
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
            child: Image.asset("assets/images/ram.png", fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 30,
            right: 35,
            child: Text(
              "!!! Jay Jay Shree Ram !!!",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
