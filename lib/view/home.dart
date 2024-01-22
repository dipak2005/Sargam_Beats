// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/view/music.dart';
import 'package:sargam_beats/view/podcast.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(microseconds: 10),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff136DFF),
          title: TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: Colors.white,
            // indicatorPadding: EdgeInsets.all(2.2),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.6,
            splashBorderRadius: BorderRadius.circular(10),
            overlayColor: MaterialStatePropertyAll(
              Color(0xff136DFF),
            ),
            tabs: [
              TextButton(
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "Music",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "Jay shree ram",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        body: TabBarView(
          clipBehavior: Clip.antiAlias,
          children: [
            Music(),
            Podcast(),
          ],
        ),
      ),
    );
  }
}
