// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/view/home.dart';
import 'package:sargam_beats/view/profile.dart';
import 'package:sargam_beats/view/searchpage.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavigationBar(
          onDestinationSelected: (value) {
            Provider.of<VideoProvider>(context, listen: false)
                .changeIndex(value);
            print("hii $value");
            if (value == 0) {
              Navigator.pushNamed(context, "Home");
            } else if (value == 1) {
              SearchPage();
            } else if (value == 2) {
            } else {
              Navigator.pushNamed(context, "Profile");
            }
          },
          selectedIndex:
              Provider.of<VideoProvider>(context, listen: false).index,
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
    );
  }
}
