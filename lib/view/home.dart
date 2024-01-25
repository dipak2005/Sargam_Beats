// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
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
          title: TabBar.secondary(
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0,
            ),
            labelStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                decorationStyle: TextDecorationStyle.solid),
            indicatorWeight: 3,
            indicator: UnderlineTabIndicator(
              borderRadius: BorderRadius.circular(20),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            splashBorderRadius: BorderRadius.circular(10),
            overlayColor: MaterialStatePropertyAll(
              Color(0xff136DFF),
            ),
            tabs: [
              FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  "Music",
                ),
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  "Podcasts",
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
            Music(map: {}),
            Podcast(),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("data"),
            ),
            NavigationBar(
              backgroundColor: Color(0xff136DFF),
              height: MediaQuery.sizeOf(context).height * 0.07,
              animationDuration: Duration(microseconds: 200),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  label: "Home",
                  tooltip: "Home",
                ),
                NavigationDestination(
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                  label: "Search",
                  tooltip: "Search",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: "Play",
                  tooltip: "Play",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: "MyLibrary",
                  tooltip: "MyLibrary",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
