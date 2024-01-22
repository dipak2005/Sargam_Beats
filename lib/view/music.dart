// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sargam_beats/model/list/bannerlist.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: [
            Consumer<VideoProvider>(
              builder: (BuildContext context, banner, Widget? child) {
                return CarouselSlider(
                  carouselController: banner.carouselController,
                  items: singerList
                      .map(
                        (banner) => Container(
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          width: MediaQuery.sizeOf(context).width,
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            banner["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    animateToClosest: true,
                    aspectRatio: 1.4,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayCurve: Curves.linear,
                    // autoPlayInterval: Duration(microseconds: 200),
                    clipBehavior: Clip.antiAlias,

                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
            ),
            Consumer<VideoProvider>(
              builder: (context, banner, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: singerList.asMap().entries.map((e) {
                    print("dipak${e.key}");
                    return GestureDetector(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.sizeOf(context).height * 0.01,
                        width: banner.pIndex == e.key
                            ? MediaQuery.sizeOf(context).width * 0.04
                            : MediaQuery.sizeOf(context).width * 0.02,
                        margin: EdgeInsetsDirectional.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: banner.pIndex == e.key
                                ? Colors.red
                                : Colors.white),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
