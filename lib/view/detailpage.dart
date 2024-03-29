// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, body_might_complete_normally_nullable, unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/controller/videocontroller.dart';
import 'package:sargam_beats/model/ganalist/arrijitsong.dart';

import 'package:sargam_beats/model/recentlist.dart';
import 'package:sargam_beats/view/list.dart';

class DetailPage extends StatefulWidget {
  Map<String, dynamic>? map = {};
  final int? index;
  List<Audio>? audio;
  String? name;

  DetailPage({Key? key, this.map, this.index, this.audio, this.name})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
  bool isShow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    widget.map = arguments;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // int index = Provider.of<VideoProvider>(context, listen: false).index;
    // List<Audio>? artist = artistList[index]["artist"];
    assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayer.open(
      Playlist(
        audios: widget.audio,
      ),
      autoStart: false,showNotification: true,notificationSettings: NotificationSettings(nextEnabled: true)
    );
  }

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
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.55,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black54,
                          Colors.black,
                          Colors.black38,
                          Colors.black,
                          Colors.black38,
                          Colors.black,
                        ],
                        tileMode: TileMode.repeated,
                        begin: Alignment.topCenter,
                        end: Alignment.centerLeft),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(150),
                              bottomRight: Radius.circular(120),
                              bottomLeft: Radius.circular(150),
                              topLeft: Radius.circular(20))),
                      child: Image.asset(
                        widget.map?["image"] ?? "Not Found",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: MediaQuery.sizeOf(context).width / 9,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xff07FFFA),
                    child: Center(
                      child: StreamBuilder<bool?>(
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
                                  } else {
                                    return IconButton(
                                      onPressed: () {
                                        if (play) {
                                          assetsAudioPlayer.pause();
                                        } else {
                                          assetsAudioPlayer.play();
                                        }
                                        print(widget.name);
                                      },
                                      icon: Icon(
                                        play
                                            ? CupertinoIcons.pause_fill
                                            : CupertinoIcons.play_arrow,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.sizeOf(context).height /
                                                28,
                                      ),
                                    );
                                  }
                                });
                          }),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: MediaQuery.sizeOf(context).width / 3.5,
                  child: CircleAvatar(
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                          )),
                    ),
                    radius: 32,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ],
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList.list(children: [
                    ListTile(
                      title: Text(
                        "Top Songs :${widget.name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      trailing: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return FullList(
                                  audio: widget.audio,
                                  name: widget.name,
                                );
                              },
                            ));
                            print(widget.name);
                          },
                          child: Text(
                            "View All >",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 15),
                          )),
                    )
                  ]),
                  SliverList.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      var ar = widget.audio?[index];
                      // List<Audio>? artist = artistList[index]["artist"];
                      // var ar = artist;
                      // var list= ar?.map((e) => (e) {
                      //        Audio.network(e[index],
                      //            metas: Metas(
                      //              title: e[index],
                      //              artist: e[index],
                      //              album: e[index],
                      //              image: e[index],
                      //            ));
                      //      });
                      return StreamBuilder<Playing?>(
                          stream: assetsAudioPlayer.current,
                          builder: (context, snapshot) {
                            var image = snapshot
                                    .data?.playlist.current.metas.image?.path ??
                                "";
                            var title =
                                snapshot.data?.playlist.current.metas.title ??
                                    "";
                            return ListTile(
                              onTap: () {
                                isShow = true;
                                showBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
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
                                            Divider(
                                              color: Colors.white,
                                              thickness: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CircleAvatar(
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: Icon(
                                                        Icons.arrow_back_ios,
                                                        color: Colors.white,
                                                      )),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ))
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.white,
                                              thickness: 1,
                                            ),
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.01,
                                            ),
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
                                                  color: Colors.transparent,
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
                                                        '';
                                                    if (snapshot.data != null) {
                                                      return Image.network(
                                                          (isShow == true)
                                                              ? "${ar?.metas.image?.path}"
                                                              : "${image1}",
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
                                                    var title = snapshot
                                                            .data
                                                            ?.playlist
                                                            .current
                                                            .metas
                                                            .title ??
                                                        "";
                                                    return Text(
                                                      (isShow == true)
                                                          ? "${ar?.metas.title}"
                                                          : title,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                stream:
                                                    assetsAudioPlayer.current,
                                                builder: (context, snapshot) {
                                                  var title = snapshot
                                                          .data
                                                          ?.playlist
                                                          .current
                                                          .metas
                                                          .title ??
                                                      "";
                                                  var album = snapshot
                                                          .data
                                                          ?.playlist
                                                          .current
                                                          .metas
                                                          .album ??
                                                      "";
                                                  var artist = snapshot
                                                          .data
                                                          ?.playlist
                                                          .current
                                                          .metas
                                                          .artist ??
                                                      "";
                                                  return ListTile(
                                                    title: Text(
                                                      (isShow == true)
                                                          ? "${ar?.metas.title} From (${ar?.metas.album})"
                                                          : "${title} From (${album})",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 30),
                                                    ),
                                                    // stream build no thay list ni object avse
                                                    subtitle: Text(
                                                      (isShow == true)
                                                          ? "${ar?.metas.title} From (${ar?.metas.album}) - ${ar?.metas.title}"
                                                          : "${title} From (${album}) - ${artist}",
                                                      style: TextStyle(
                                                          color: Colors.white70,
                                                          fontSize: 15),
                                                    ),
                                                    trailing: IconButton(
                                                      icon: Icon(
                                                        Icons.more_vert_sharp,
                                                        color: Colors.white,
                                                      ),
                                                      onPressed: () {
                                                        showModalBottomSheet(
                                                          isDismissible: false,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          isScrollControlled:
                                                              true,
                                                          context: context,
                                                          builder: (context) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                children: [
                                                                  Container(
                                                                    color: Colors
                                                                        .transparent,
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1,
                                                                    child:
                                                                        Stack(
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.7,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              100,
                                                                          top:
                                                                              140,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height / 4,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width / 2,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(10),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Image.network(
                                                                                  "${ar?.metas.image?.path}",
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.01,
                                                                  ),
                                                                  Text(
                                                                      "${ar?.metas.title} From (${ar?.metas.album})")
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  );
                                                }),
                                            StreamBuilder<Duration>(
                                                stream: assetsAudioPlayer
                                                    .currentPosition,
                                                builder: (context, snapshot) {
                                                  var sec = snapshot
                                                          .data?.inSeconds ??
                                                      1;
                                                  var minute = snapshot
                                                          .data?.inMinutes ??
                                                      0;

                                                  return StreamBuilder<
                                                          Playing?>(
                                                      stream: assetsAudioPlayer
                                                          .current,
                                                      builder:
                                                          (context, snapshot1) {
                                                        var duration = snapshot1
                                                            .data
                                                            ?.audio
                                                            .duration;
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                    assetsAudioPlayer
                                                        .playlist?.audios
                                                        .indexOf(widget
                                                            .audio![index]);
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
                                                    builder:
                                                        (context, snapshot) {
                                                      var play =
                                                          snapshot.data ??
                                                              false;
                                                      return StreamBuilder<
                                                              bool?>(
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
                                                            return IconButton(
                                                                onPressed: () {
                                                                  if (play) {
                                                                    assetsAudioPlayer
                                                                        .pause();
                                                                  } else {
                                                                    assetsAudioPlayer
                                                                        .playOrPause();
                                                                    Provider.of<VideoProvider>(context,listen: false).recentPlayed
                                                                        .add(widget
                                                                            .audio![index]);
                                                                    assetsAudioPlayer
                                                                        .playlistPlayAtIndex(
                                                                            index);
                                                                    Provider.of<VideoProvider>(
                                                                            context,
                                                                            listen:
                                                                                false)
                                                                        .refresh();
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
                                                    var al = assetsAudioPlayer
                                                        .playlist?.audios
                                                        .indexOf(
                                                            arrSongList[index]);
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
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              leading: snapshot.data != null
                                  ? SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.network(
                                          isAntiAlias: true,
                                          "${ar?.metas.image?.path}"))
                                  : CircularProgressIndicator(
                                      color: Colors.white),
                              title: Text(
                                "${ar?.metas.title}",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "${ar?.metas.artist}",
                                style: TextStyle(color: Colors.white60),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    showBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      elevation: 3,
                                      context: context,
                                      builder: (context) {
                                        return SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                color: Colors.transparent,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      child: Stack(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.7,
                                                              width: MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                                gradient: LinearGradient(
                                                                    colors: [
                                                                      Color(
                                                                          0xff208EBA),
                                                                      Color(
                                                                          0xff416DFF),
                                                                      // Color(0xff2242FF),
                                                                      Color(
                                                                          0xff136DFF),
                                                                      Color(
                                                                          0xff2492FF),
                                                                      Color(
                                                                          0xff17B7FF),
                                                                      Color(
                                                                          0xff136DFF),
                                                                    ],
                                                                    begin: Alignment
                                                                        .topLeft,
                                                                    end: Alignment
                                                                        .bottomRight),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 100,
                                                            top: 130,
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height /
                                                                  3,
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width /
                                                                  2,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                              ),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(10)),
                                                                      child: Image
                                                                          .network(
                                                                        "${ar?.metas.image?.path}",
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.01,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(
                                    Icons.more_vert_sharp,
                                    color: Colors.white,
                                  )),
                            );
                          });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
