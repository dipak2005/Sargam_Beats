// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sargam_beats/model/ganalist/arrijitsong.dart';
import 'package:sargam_beats/model/ganalist/atifsonglist.dart';

import '../../controller/videocontroller.dart';
import '../../model/recentlist.dart';
import '../list.dart';

class Afpage extends StatefulWidget {
  const Afpage({super.key});

  @override
  State<Afpage> createState() => _AfpageState();
}

class _AfpageState extends State<Afpage> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
  bool isShow = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // int index = Provider.of<VideoProvider>(context, listen: false).index;
    // List<Audio>? artist = artistList[index]["artist"];
    assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayer.open(
      Playlist(
        audios: atifSongList,
      ),
      autoStart: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        var image = atifSongList[index].metas.image?.path ?? '';
        var title = atifSongList[index].metas.title ?? '';
        var album = atifSongList[index].metas.album ?? '';
        var ar = atifSongList[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              radius: 40,
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
                              height: MediaQuery.sizeOf(context).height * 0.05,
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.01,
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height / 2.5,
                              width: MediaQuery.sizeOf(context).width,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: StreamBuilder<Playing?>(
                                  stream: assetsAudioPlayer.current,
                                  builder: (context, snapshot) {
                                    var image1 = snapshot.data?.playlist.current
                                            .metas.image?.path ??
                                        '';
                                    if (snapshot.data != null) {
                                      return Image.network(
                                          (isShow == true)
                                              ? "${ar.metas.image?.path}"
                                              : image1,
                                          fit: BoxFit.cover);
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      );
                                    }
                                  }),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.03,
                            ),
                            Align(
                              alignment: Alignment(-0.8, 0),
                              child: StreamBuilder<Playing?>(
                                  stream: assetsAudioPlayer.current,
                                  builder: (context, snapshot) {
                                    var title = snapshot.data?.playlist.current
                                            .metas.title ??
                                        "";
                                    return Text(
                                      (isShow == true)
                                          ? "${ar.metas.title}"
                                          : title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700),
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
                                          color: Color(0xff07FFFA),
                                          fontSize: 15),
                                    ),
                                    Icon(
                                      CupertinoIcons.arrow_up_circle_fill,
                                      color: Color(0xff07FFFA),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            StreamBuilder<Playing?>(
                                stream: assetsAudioPlayer.current,
                                builder: (context, snapshot) {
                                  var title = snapshot
                                          .data?.playlist.current.metas.title ??
                                      "";
                                  var album = snapshot
                                          .data?.playlist.current.metas.album ??
                                      "";
                                  var artist = snapshot.data?.playlist.current
                                          .metas.artist ??
                                      "";
                                  return ListTile(
                                    title: Text(
                                      (isShow == true)
                                          ? "${ar.metas.title} From (${ar.metas.album})"
                                          : "$title From ($album)",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30),
                                    ),
                                    subtitle: Text(
                                      (isShow == true)
                                          ? "${ar.metas.title} From (${ar.metas.album}) - ${ar.metas.title}"
                                          : "$title From ($album) - $artist",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 15),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(
                                        Icons.more_vert_sharp,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                          isDismissible: false,
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) {
                                            return SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    color: Colors.transparent,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1,
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
                                                          top: 140,
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height /
                                                                4,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width /
                                                                2,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Image.network(
                                                                  "${ar.metas.image?.path}",
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.01,
                                                  ),
                                                  Text(
                                                      "${ar.metas.title} From (${ar.metas.album})")
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
                                stream: assetsAudioPlayer.currentPosition,
                                builder: (context, snapshot) {
                                  var sec = snapshot.data?.inSeconds ?? 1;
                                  var minute = snapshot.data?.inMinutes ?? 0;

                                  return StreamBuilder<Playing?>(
                                      stream: assetsAudioPlayer.current,
                                      builder: (context, snapshot1) {
                                        var duration =
                                            snapshot1.data?.audio.duration;
                                        if (duration != null) {
                                          return Column(
                                            children: [
                                              Slider(
                                                thumbColor: Color(0xff07FFFA),
                                                activeColor: Color(0xff07FFFA),
                                                inactiveColor: Colors.white70,
                                                max: (duration.inSeconds ?? 1)
                                                    .toDouble(),
                                                min: 0.0,
                                                value: sec.toDouble(),
                                                onChanged: (value) {
                                                  assetsAudioPlayer.seek(
                                                    Duration(
                                                      seconds: value.toInt(),
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
                                                        color: Colors.white70),
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
                              height: MediaQuery.sizeOf(context).height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                IconButton(
                                  onPressed: () {
                                    assetsAudioPlayer.previous(
                                        keepLoopMode: true);
                                    assetsAudioPlayer.playlist?.audios
                                        .indexOf(arrSongList[index]);
                                  },
                                  icon: Icon(
                                    CupertinoIcons.backward_end_fill,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                StreamBuilder<bool?>(
                                    stream: assetsAudioPlayer.isPlaying,
                                    builder: (context, snapshot) {
                                      var play = snapshot.data ?? false;
                                      return StreamBuilder<bool?>(
                                          stream: assetsAudioPlayer.isBuffering,
                                          builder: (context, snapshot) {
                                            if (snapshot.data ?? false) {
                                              return SizedBox(
                                                height: 30,
                                                width: 30,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                ),
                                              );
                                            }
                                            return IconButton(
                                                onPressed: () {
                                                  if (play) {
                                                    assetsAudioPlayer.pause();
                                                  } else {
                                                    assetsAudioPlayer.play();

                                                    var add = assetsAudioPlayer
                                                        .playlistPlayAtIndex(
                                                            index);
                                                    Provider.of<VideoProvider>(
                                                            context,
                                                            listen: false)
                                                        .recentAdd(ar);
                                                  }
                                                },
                                                icon: Icon(
                                                  play
                                                      ? CupertinoIcons
                                                          .pause_circle_fill
                                                      : CupertinoIcons
                                                          .play_circle_fill,
                                                  color: Colors.white,
                                                  size: 45,
                                                ));
                                          });
                                    }),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                IconButton(
                                  onPressed: () {
                                    assetsAudioPlayer.next(
                                        keepLoopMode: true, stopIfLast: false);
                                    var al = assetsAudioPlayer.playlist?.audios
                                        .indexOf(arrSongList[index]);
                                  },
                                  icon: Icon(
                                    CupertinoIcons.forward_end_fill,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.05,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.double_music_note,
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
              child: Container(
                margin: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.sizeOf(context).height * 0.18,
                width: MediaQuery.sizeOf(context).width * 0.39,
                child: Image.network(image, fit: BoxFit.cover),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
    );
  }
}
