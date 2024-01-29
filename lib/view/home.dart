// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/model/ganalist/arrijitsong.dart';
import 'package:sargam_beats/model/recentlist.dart';
import 'package:sargam_beats/view/music.dart';
import 'package:sargam_beats/view/podcast.dart';
import 'package:sargam_beats/view/video.dart';
import 'package:sargam_beats/view/widgets/navigation.dart';
import 'package:video_player/video_player.dart';

import '../model/ganalist/radiolist.dart';

class Home extends StatefulWidget {
  Map<String, dynamic>? map = {};
  final List<Audio>? audio;

  Home({super.key, this.map, this.audio});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  late VideoPlayerController controller;
  ChewieController? chewieController;
  bool isShow = true;
  bool isVideo = false;
  List<String> arVideoList = [
    "assets/videos/lut.mp4",
    "assets/videos/saware.mp4",
    // "assets/videos/kabira.mp4",
  ];
  int index = 0;

  @override
  void dispose() {
    controller.dispose();
    chewieController?.dispose();
    super.dispose();
  }

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
    );

    // while (arVideoList.isNotEmpty) {
      String videoList = arVideoList[index];
      controller = VideoPlayerController.asset(videoList)
        ..initialize().then((value) {
          chewieController = ChewieController(
              videoPlayerController: controller,
              autoPlay: false,
              looping: true);
          setState(() {});
          // chewieController?.setLooping(isShow);
          index++;
        });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(microseconds: 10),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
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
            StreamBuilder<Playing?>(
              stream: assetsAudioPlayer.current,
              builder: (context, snapshot2) {
                var title = snapshot2.data?.playlist.current.metas.title ?? "";
                var image =
                    snapshot2.data?.playlist.current.metas.image?.path ?? "";
                var artist =
                    snapshot2.data?.playlist.current.metas.artist ?? "";
                var album = snapshot2.data?.playlist.current.metas.album ?? "";
                return Container(
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
                  child: (isShow == true)
                      ? ListTile(
                          onTap: () async {
                            print("isShow $isShow");

                            isShow = false;
                            setState(() {});
                            await showBottomSheet(
                              context: context,
                              builder: (context) {
                                return WillPopScope(
                                  onWillPop: () async {
                                    print("back");
                                    isShow = true;
                                    setState(() {});
                                    return true;
                                  },
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xff208EBA),
                                            Color(0xff416DFF),
                                            // Color(0xff2242FF),
                                            Color(0xff136DFF),
                                            Color(0xff2492FF),
                                            Color(0xff17B7FF),
                                            Color(0xff136DFF),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                          ),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.01,
                                          ),
                                          if (isVideo == true)
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height /
                                                        3,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                        .width,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Column(
                                                  children: [
                                                    AspectRatio(
                                                      aspectRatio: controller
                                                          .value.aspectRatio,
                                                      child: Chewie(
                                                        // controller:
                                                        controller:
                                                            chewieController!,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          else
                                            Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height /
                                                  3,
                                              width: MediaQuery.sizeOf(context)
                                                  .width,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: StreamBuilder<Playing?>(
                                                  stream:
                                                      assetsAudioPlayer.current,
                                                  builder: (context, snapshot) {
                                                    var image1 = snapshot
                                                            .data
                                                            ?.playlist
                                                            .current
                                                            .metas
                                                            .image
                                                            ?.path ??
                                                        "";
                                                    var song = snapshot
                                                        .data?.playlist.current;
                                                    if (Provider.of<
                                                                VideoProvider>(
                                                            context,
                                                            listen: false)
                                                        .recentPlayed
                                                        .contains(song)) {
                                                      print("Already");
                                                    } else if (song != null) {
                                                      print(
                                                          "object ${song.metas.title}");
                                                      Provider.of<VideoProvider>(
                                                              context,
                                                              listen: false)
                                                          .recentPlayed
                                                          .add(song);
                                                    }
                                                    if (snapshot.data != null) {
                                                      return Image.network(
                                                          image1,
                                                          fit: BoxFit.cover);
                                                    } else {
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: Colors.white,
                                                        ),
                                                      );
                                                    }
                                                  }),
                                            ),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.03,
                                          ),
                                          Align(
                                            alignment: Alignment(-0.8, 0),
                                            child: StreamBuilder<Playing?>(
                                                stream:
                                                    assetsAudioPlayer.current,
                                                builder: (context, snapshot) {
                                                  var title1 = snapshot
                                                          .data
                                                          ?.playlist
                                                          .current
                                                          .metas
                                                          .title ??
                                                      "";
                                                  return Text(
                                                    title1,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  );
                                                }),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.8, 0),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "Full Lyrics",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff07FFFA),
                                                        fontSize: 15),
                                                  ),
                                                  Icon(
                                                    CupertinoIcons
                                                        .arrow_up_circle_fill,
                                                    color: Color(0xff07FFFA),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          StreamBuilder<Playing?>(
                                              stream: assetsAudioPlayer.current,
                                              builder: (context, snapshot) {
                                                var title1 = snapshot
                                                        .data
                                                        ?.playlist
                                                        .current
                                                        .metas
                                                        .title ??
                                                    "";
                                                var album1 = snapshot
                                                        .data
                                                        ?.playlist
                                                        .current
                                                        .metas
                                                        .album ??
                                                    "";
                                                var artist1 = snapshot
                                                        .data
                                                        ?.playlist
                                                        .current
                                                        .metas
                                                        .artist ??
                                                    "";
                                                var song = snapshot
                                                    .data?.playlist.current;
                                                if (song != null) {
                                                  Provider.of<VideoProvider>(
                                                          context,
                                                          listen: false)
                                                      .recentPlayed
                                                      .add(song);
                                                }

                                                return ListTile(
                                                  title: Text(
                                                    "$title1 From ($album1)",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 30),
                                                  ),
                                                  subtitle: Text(
                                                    "$title1 From ($album1) - $artist1",
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        fontSize: 15),
                                                  ),
                                                  trailing: IconButton(
                                                    icon: Icon(
                                                      Icons
                                                          .video_collection_outlined,
                                                      color: Colors.white,
                                                      size: 40,
                                                    ),
                                                    onPressed: () {
                                                      // Navigator.pushNamed(
                                                      //     context, "Videoplay");
                                                      // Videos(
                                                      //   audio: radioList,
                                                      //   map: widget.map,
                                                      // );
                                                      // showModalBottomSheet(
                                                      //   isDismissible: false,
                                                      //   backgroundColor:
                                                      //       Colors.transparent,
                                                      //   isScrollControlled:
                                                      //       true,
                                                      //   context: context,
                                                      //   builder: (context) {
                                                      //     return SingleChildScrollView(
                                                      //       child: Column(
                                                      //         children: [
                                                      //           Container(
                                                      //             color: Colors
                                                      //                 .transparent,
                                                      //             height: MediaQuery.sizeOf(
                                                      //                         context)
                                                      //                     .height *
                                                      //                 1,
                                                      //             child: Stack(
                                                      //               clipBehavior:
                                                      //                   Clip.antiAlias,
                                                      //               children: [
                                                      //                 Align(
                                                      //                   alignment:
                                                      //                       Alignment.bottomCenter,
                                                      //                   child:
                                                      //                       Container(
                                                      //                     height:
                                                      //                         MediaQuery.sizeOf(context).height * 0.7,
                                                      //                     width:
                                                      //                         MediaQuery.sizeOf(context).width,
                                                      //                     decoration:
                                                      //                         BoxDecoration(
                                                      //                       borderRadius:
                                                      //                           BorderRadius.all(Radius.circular(10)),
                                                      //                       gradient:
                                                      //                           LinearGradient(colors: [
                                                      //                         Color(0xff208EBA),
                                                      //                         Color(0xff416DFF),
                                                      //                         // Color(0xff2242FF),
                                                      //                         Color(0xff136DFF),
                                                      //                         Color(0xff2492FF),
                                                      //                         Color(0xff17B7FF),
                                                      //                         Color(0xff136DFF),
                                                      //                       ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                      //                     ),
                                                      //                   ),
                                                      //                 ),
                                                      //                 Positioned(
                                                      //                   left:
                                                      //                       100,
                                                      //                   top:
                                                      //                       140,
                                                      //                   child:
                                                      //                       Container(
                                                      //                     height:
                                                      //                         MediaQuery.sizeOf(context).height / 4,
                                                      //                     width:
                                                      //                         MediaQuery.sizeOf(context).width / 2,
                                                      //                     clipBehavior:
                                                      //                         Clip.antiAlias,
                                                      //                     decoration:
                                                      //                         BoxDecoration(
                                                      //                       borderRadius:
                                                      //                           BorderRadius.circular(10),
                                                      //                     ),
                                                      //                     child:
                                                      //                         Column(
                                                      //                       mainAxisSize:
                                                      //                           MainAxisSize.min,
                                                      //                       children: [
                                                      //                         StreamBuilder<Playing?>(
                                                      //                             stream: assetsAudioPlayer.current,
                                                      //                             builder: (context, snapshot) {
                                                      //                               return Image.network(
                                                      //                                 image,
                                                      //                               );
                                                      //                             }),
                                                      //                       ],
                                                      //                     ),
                                                      //                   ),
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           SizedBox(
                                                      //             height: MediaQuery.sizeOf(
                                                      //                         context)
                                                      //                     .height *
                                                      //                 0.01,
                                                      //           ),
                                                      //           Text(
                                                      //               "$title From ($album)")
                                                      //         ],
                                                      //       ),
                                                      //     );
                                                      //   },
                                                      // );

                                                      // chewieController?.deviceOrientationsOnEnterFullScreen;
                                                      if (controller
                                                          .value.isPlaying) {
                                                        controller.pause();
                                                      } else {
                                                        isVideo = true;
                                                        controller.play();
                                                        Provider.of<VideoProvider>(
                                                                context,
                                                                listen: false)
                                                            .refresh();
                                                      }
                                                    },
                                                  ),
                                                );
                                              }),
                                          StreamBuilder<Duration>(
                                              stream: assetsAudioPlayer
                                                  .currentPosition,
                                              builder: (context, snapshot) {
                                                var sec =
                                                    snapshot.data?.inSeconds ??
                                                        1;
                                                var minute =
                                                    snapshot.data?.inMinutes ??
                                                        0;

                                                return StreamBuilder<Playing?>(
                                                    stream: assetsAudioPlayer
                                                        .current,
                                                    builder:
                                                        (context, snapshot1) {
                                                      var duration = snapshot1
                                                          .data?.audio.duration;
                                                      if (duration != null) {
                                                        return Column(
                                                          children: [
                                                            Slider(
                                                              thumbColor: Color(
                                                                  0xff07FFFA),
                                                              activeColor: Color(
                                                                  0xff07FFFA),
                                                              inactiveColor:
                                                                  Colors
                                                                      .white70,
                                                              max: (duration
                                                                          .inSeconds ??
                                                                      1)
                                                                  .toDouble(),
                                                              min: 0.0,
                                                              value: sec
                                                                  .toDouble(),
                                                              onChanged:
                                                                  (value) {
                                                                assetsAudioPlayer
                                                                    .seek(
                                                                  Duration(
                                                                    seconds: value
                                                                        .toInt(),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "${minute % 60}:${sec % 60}",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white70),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        );
                                                      } else {
                                                        return CircularProgressIndicator();
                                                      }
                                                    });
                                              }),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.03,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  CupertinoIcons.heart,
                                                  size: 45,
                                                  color: Colors.white70,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.05,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  assetsAudioPlayer.previous(
                                                      keepLoopMode: true);
                                                },
                                                icon: Icon(
                                                  CupertinoIcons
                                                      .backward_end_fill,
                                                  color: Colors.white,
                                                  size: 45,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.05,
                                              ),
                                              StreamBuilder<bool?>(
                                                  stream: assetsAudioPlayer
                                                      .isPlaying,
                                                  builder: (context, snapshot) {
                                                    var play =
                                                        snapshot.data ?? false;
                                                    return StreamBuilder<bool?>(
                                                        stream:
                                                            assetsAudioPlayer
                                                                .isBuffering,
                                                        builder: (context,
                                                            snapshot) {
                                                          if (snapshot.data ??
                                                              false) {
                                                            return SizedBox(
                                                              height: 30,
                                                              width: 30,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            );
                                                          }
                                                          return StreamBuilder<
                                                                  Playing?>(
                                                              stream:
                                                                  assetsAudioPlayer
                                                                      .current,
                                                              builder: (context,
                                                                  snapshot3) {
                                                                var song =
                                                                    snapshot3
                                                                        .data
                                                                        ?.playlist
                                                                        .current;
                                                                return IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      if (play) {
                                                                        assetsAudioPlayer
                                                                            .pause();
                                                                      } else {
                                                                        isVideo ==
                                                                            false;

                                                                        assetsAudioPlayer
                                                                            .playOrPause();
                                                                        Provider.of<VideoProvider>(context,
                                                                                listen: false)
                                                                            .recentPlayed
                                                                            .add(song!);
                                                                      }
                                                                    },
                                                                    icon: Icon(
                                                                      play
                                                                          ? CupertinoIcons
                                                                              .pause_circle_fill
                                                                          : CupertinoIcons
                                                                              .play_circle_fill,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 45,
                                                                    ));
                                                              });
                                                        });
                                                  }),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.05,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  assetsAudioPlayer.next(
                                                      keepLoopMode: true,
                                                      stopIfLast: false);
                                                },
                                                icon: Icon(
                                                  CupertinoIcons
                                                      .forward_end_fill,
                                                  color: Colors.white,
                                                  size: 45,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.05,
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  CupertinoIcons
                                                      .double_music_note,
                                                  color: Colors.white70,
                                                  size: 45,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                            // isShow = true;
                            // setState(() {});
                          },
                          textColor: Colors.white,
                          leading: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            width: MediaQuery.sizeOf(context).width * 0.13,
                            child: snapshot2.data == null
                                ? Center(
                                    child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ))
                                : Image.network(image),
                          ),
                          title: Text("$title-$album From (Radio: 94.3)"),
                          subtitle: Text(artist),
                          trailing: StreamBuilder<bool?>(
                              stream: assetsAudioPlayer.isPlaying,
                              builder: (context, snapshot) {
                                var play = snapshot.data ?? false;
                                return StreamBuilder<bool?>(
                                    stream: assetsAudioPlayer.isBuffering,
                                    builder: (context, snapshot1) {
                                      if (snapshot1.data ?? false) {
                                        return SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        );
                                      }
                                      return CircleAvatar(
                                        child: IconButton(
                                          onPressed: () {
                                            if (play) {
                                              assetsAudioPlayer.pause();
                                            } else {
                                              assetsAudioPlayer.play();
                                              // recentPlayed.add()
                                            }
                                          },
                                          icon: Icon(play
                                              ? CupertinoIcons.pause_fill
                                              : CupertinoIcons
                                                  .play_arrow_solid),
                                        ),
                                      );
                                    });
                              }),
                        )
                      : SizedBox.shrink(),
                );
              },
            ),
            // Navigation(),
          ],
        ),
      ),
    );
  }
}
