// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sargam_beats/model/ganalist/arrijitsong.dart';
import 'package:sargam_beats/model/ganalist/atifsonglist.dart';
import 'package:sargam_beats/model/ganalist/darshan.dart';
import 'package:sargam_beats/model/ganalist/ishita.dart';
import 'package:sargam_beats/model/ganalist/neha.dart';
import 'package:sargam_beats/model/ganalist/shreya.dart';
import 'package:sargam_beats/model/ganalist/tulsi.dart';

import 'package:sargam_beats/model/list/bannerlist.dart';
import 'package:sargam_beats/model/recentlist.dart';
import 'package:sargam_beats/model/singermodel.dart';
import 'package:sargam_beats/view/detailpage.dart';
import 'package:sargam_beats/view/widgets/afpage.dart';
import 'package:sargam_beats/view/widgets/arpage.dart';
import 'package:sargam_beats/view/widgets/bollywood.dart';
import 'package:sargam_beats/view/widgets/darpage.dart';
import 'package:sargam_beats/view/widgets/ishitapage.dart';
import 'package:sargam_beats/view/widgets/nehapage.dart';
import 'package:sargam_beats/view/widgets/shreyapage.dart';
import 'package:sargam_beats/view/widgets/tulsipage.dart';

import '../model/ganalist/radiolist.dart';
import 'list.dart';

class Music extends StatefulWidget {
  Map<String, dynamic>? map = {};
  String? name;

  Music({
    Key? key,
    this.map,
  }) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

ScrollController scrollController = ScrollController();

class _MusicState extends State<Music> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  int? artistIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayer.open(
      Playlist(
        audios: radioList,
        startIndex: 0,
      ),
      autoStart: false,
      showNotification: true,
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.9,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.02,
                ),
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  banner["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        onPageChanged: (index, reason) {
                          banner.changeIndex(index);
                        },
                        autoPlayInterval: Duration(seconds: 3),
                        aspectRatio: 2.4,
                        autoPlay: true,
                        initialPage: banner.pIndex,
                        viewportFraction: 1.3,
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        autoPlayCurve: Curves.linear,
                        clipBehavior: Clip.antiAlias,
                        scrollDirection: Axis.horizontal,
                        enlargeFactor: 3,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
                Consumer<VideoProvider>(
                  builder: (context, banner, child) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: singerList.asMap().entries.map((e) {
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
                    controller: scrollController,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> sl = artistList[index];
                      SingerModel sm = SingerModel.fromMap(sl);

                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 90,
                              backgroundColor: Colors.black38,
                              child: InkWell(
                                onTap: () {
                                  var audio = (index == 0)
                                      ? arrSongList
                                      : (index == 1)
                                          ? atifSongList
                                          : (index == 2)
                                              ? darshanSongList
                                              : (index == 3)
                                                  ? shreyaSongList
                                                  : (index == 4)
                                                      ? tuLsiSongList
                                                      : (index == 5)
                                                          ? nehaSongList
                                                          : ishItaSongList;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        settings: RouteSettings(arguments: sl),
                                        builder: (context) {
                                          return DetailPage(
                                            map: {}, name: sm.name,
                                            audio: audio,
                                            //     ? arrSongList[index]
                                            //     : index == 1
                                            //     ? atifSongList![index]
                                            //     : index == 2
                                            //     ? darshanSongList![index]
                                            //     : index == 3
                                            //     ? shreyaSongList![index]
                                            //     : index == 4
                                            //     ? tuLsiSongList![index]
                                            //     : index == 5
                                            //     ? nehaSongList[index]
                                            //     : ishItaSongList[index],
                                            index: index,
                                          );
                                        },
                                      ));
                                },
                                radius: 80,
                                child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.25,
                                    width: MediaQuery.sizeOf(context).width,
                                    margin: EdgeInsetsDirectional.all(10),
                                    clipBehavior: Clip.antiAlias,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Image.asset(
                                      artistList[index]["image"],
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
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arrijit Singh",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: arrSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Arpage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Atif Aslam",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: atifSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Afpage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tulsi Kumar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: tuLsiSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Tulsipage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Darshan Rawal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: darshanSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: darpage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Neha Kakkar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: nehaSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Nehapage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bollywood Masala",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: radioList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Bollywood()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ishita Vishwakarma",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: ishItaSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Ishitapage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shreya Ghosal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FullList(
                                audio: shreyaSongList,
                                name: widget.name,
                                map: widget.map?["name"],
                              );
                            },
                          ));
                          print(widget.name);
                        },
                        child: Text(
                          "View All >",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Shreyapage()),
                Provider.of<VideoProvider>(context, listen: false)
                        .recentPlayed
                        .isNotEmpty
                    ? Align(
                        alignment: Alignment(-0.9, 0),
                        child: Text(
                          "Recently Played",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  child: Provider.of<VideoProvider>(context, listen: false)
                          .recentPlayed
                          .isNotEmpty
                      ? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: recentPlayed.length),
                          itemCount:
                              Provider.of<VideoProvider>(context, listen: false)
                                  .recentPlayed
                                  .length,
                          itemBuilder: (context, index) {
                            var image = Provider.of<VideoProvider>(context,
                                        listen: false)
                                    .recentPlayed[index]
                                    .metas
                                    .image
                                    ?.path ??
                                '';
                            var title = Provider.of<VideoProvider>(context,
                                        listen: false)
                                    .recentPlayed[index]
                                    .metas
                                    .title ??
                                '';
                            var album = Provider.of<VideoProvider>(context,
                                        listen: false)
                                    .recentPlayed[index]
                                    .metas
                                    .album ??
                                '';
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: MediaQuery.sizeOf(context).height *
                                        0.18,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.39,
                                    child:
                                        Image.network(image, fit: BoxFit.cover),
                                  ),
                                  Text(
                                    title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      : SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
