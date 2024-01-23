// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sargam_beats/model/list/bannerlist.dart';
import 'package:sargam_beats/model/singermodel.dart';

class Music extends StatefulWidget {
  Map<String,dynamic>? map = {};

  Music({Key? key, required this.map}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
            Stack(
              children: [
                Consumer<VideoProvider>(
                  builder: (BuildContext context, banner, Widget? child) {
                    return CarouselSlider(
                      carouselController: banner.carouselController,
                      items: singerList
                          .map(
                            (banner) => InkWell(
                              onTap: () {},
                              child: Container(
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
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          banner.changeIndex(index);
                          print(index);
                        },
                        scrollPhysics: PageScrollPhysics(),
                        animateToClosest: true,
                        aspectRatio: 2.4,
                        autoPlay: true,
                        initialPage: banner.pIndex,
                        viewportFraction: 1,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                        autoPlayCurve: Curves.linear,
                        clipBehavior: Clip.antiAlias,
                        scrollDirection: Axis.horizontal,
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Consumer<VideoProvider>(
              builder: (context, banner, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: singerList.asMap().entries.map((e) {
                    print("dipak${e.key}");
                    return GestureDetector(
                      onScaleUpdate: (details) {},
                      onTap: () =>
                          banner.carouselController.animateToPage(e.key),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.sizeOf(context).height * 0.01,
                        width: banner.pIndex == e.key
                            ? MediaQuery.sizeOf(context).width * 0.02
                            : MediaQuery.sizeOf(context).width * 0.02,
                        margin: EdgeInsetsDirectional.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: banner.pIndex == e.key
                                ? Colors.white
                                : Colors.blue),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Align(
              alignment: Alignment(-0.8, 0),
              child: Text(
                "Recommended Artist Stations",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: artistList.length,
                padding: EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  Map<String, dynamic> sl = artistList[index];
                  SingerModel sm = SingerModel.fromMap(sl);
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.black38,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "DetailPage",
                                arguments: widget.map);
                          },
                          radius: 80,
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.25,
                              width: MediaQuery.sizeOf(context).width,
                              margin: EdgeInsetsDirectional.all(10),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                sm.img ?? "",
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.01,
                      ),
                      Text(
                        sm.name ?? "",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Artist Radio",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
