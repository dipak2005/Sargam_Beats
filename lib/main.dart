// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/view/home.dart';
import 'package:sargam_beats/view/splash.dart';

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
        title: "Sar-gam_Beats",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: "/",
        routes: {
          "/": (context) =>  Splash(),
          "Home":(context) => Home(),
        },
      ),
    );
  }
}
