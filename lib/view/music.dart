// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:sargam_beats/model/list/bannerlist.dart';
import 'package:sargam_beats/model/singermodel.dart';
import 'package:sargam_beats/view/detailpage.dart';

import '../model/ganalist/radiolist.dart';



class Music extends StatefulWidget {
  Map<String, dynamic>? map = {};

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
        playInBackground: PlayInBackground.enabled);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      autoPlayInterval: Duration(seconds: 2),
                      aspectRatio: 2.4,
                      autoPlay: true,
                      initialPage: banner.pIndex,
                      viewportFraction: 1.3,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      autoPlayCurve: Curves.linear,
                      clipBehavior: Clip.antiAlias,
                      scrollDirection: Axis.horizontal,
                      enlargeFactor: 1.3,
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
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 90,
                          backgroundColor: Colors.black38,
                          child: InkWell(
                            onTap: () {
                              Provider.of<VideoProvider>(context, listen: false)
                                  .artistIndex(index);
                              Navigator.pushNamed(
                                context,
                                "DetailPage",
                                arguments: sl,
                              );

                              // showBottomSheet(
                              //   context: context,
                              //   builder: (context) {
                              //     if (assetsAudioPlayer.playlistFinished ==
                              //         true) {
                              //       return SizedBox.shrink();
                              //     } else {
                              //       showModalBottomSheet(
                              //         context: context,
                              //         builder: (context) {
                              //           return StreamBuilder<Playing?>(
                              //             stream: assetsAudioPlayer.current,
                              //             builder: (context, snapshot2) {
                              //               var title = snapshot2.data?.playlist
                              //                   .current.metas.title ??
                              //                   "";
                              //               var image = snapshot2.data?.playlist
                              //                   .current.metas.image?.path ??
                              //                   "";
                              //               var artist = snapshot2.data?.playlist
                              //                   .current.metas.artist ??
                              //                   "";
                              //               var album = snapshot2.data?.playlist
                              //                   .current.metas.album ??
                              //                   "";
                              //               return ListTile(
                              //                 leading: SizedBox(
                              //                   height: MediaQuery.sizeOf(context)
                              //                       .height *
                              //                       0.05,
                              //                   width: MediaQuery.sizeOf(context)
                              //                       .width *
                              //                       0.05,
                              //                   child: Image.network(image),
                              //                 ),
                              //                 title: Text("$title-$album"),
                              //                 subtitle: Text(artist),
                              //                 trailing: IconButton(
                              //                   onPressed: () {},
                              //                   icon: Icon(CupertinoIcons
                              //                       .play_arrow_solid),
                              //                 ),
                              //               );
                              //             },
                              //           );
                              //         },
                              //       );
                              //       return SizedBox.shrink();
                              //     }
                              //   },
                              // );
                            },
                            radius: 80,
                            child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.25,
                                width: MediaQuery.sizeOf(context).width,
                                margin: EdgeInsetsDirectional.all(10),
                                clipBehavior: Clip.antiAlias,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
