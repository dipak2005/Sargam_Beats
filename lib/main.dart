// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/view/detailpage.dart';
import 'package:sargam_beats/view/home.dart';
import 'package:sargam_beats/view/list.dart';
import 'package:sargam_beats/view/music.dart';
import 'package:sargam_beats/view/profile.dart';
import 'package:sargam_beats/view/searchpage.dart';
import 'package:sargam_beats/view/splash.dart';
import 'package:sargam_beats/view/video.dart';

void main() {
  runApp(Sargam_Beats());
}

class Sargam_Beats extends StatelessWidget {
  const Sargam_Beats({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => VideoProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        title: "Sargam_Beats",
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        initialRoute: "/",
        routes: {
          "/": (context) => Splash(),
          "Home": (context) => Home(),
          "Music": (context) => Music(),
          "DetailPage": (context) => DetailPage(),
          "FullList": (context) => FullList(),
          "Videoplay": (context) => Videoplay(),
          "SearchPage": (context) => SearchPage(),
          "Profile": (context) => Profile(),
        },
      ),
    );
  }
}
