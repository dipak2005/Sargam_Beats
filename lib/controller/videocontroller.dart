// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../model/ganalist/radiolist.dart';

class VideoProvider extends ChangeNotifier {
  CarouselController carouselController = CarouselController();
  int pIndex = 0;
  Timer? timer;

  int index = 0;
  List<Audio>? audio;

  AssetsAudioPlayer assetsAudioPlayer=AssetsAudioPlayer();
  late VideoPlayerController controller;
  ChewieController? chewieController;


  List<Audio> recentPlayed=[];
  List<Audio> favList=[];
  List<Audio> playList=[];
  List<Audio> searchList=[];



  void recentAdd(Audio audio){
    recentPlayed.add(audio);
    notifyListeners();
  }
  void fav(Audio audio){
    favList.add(audio);
    notifyListeners();
  }

  void vPlay(){


    controller = VideoPlayerController.asset("assets/videos/lut.mp4")
      ..initialize().then((value) {
        chewieController = ChewieController(
            videoPlayerController: controller, autoPlay: false, looping: true);
        notifyListeners();
      });
  }



  void changeIndex(int index) {
    pIndex = index;
    notifyListeners();
  }

  void refresh(){
    notifyListeners();
  }

  void artistIndex(int artistIndex) {
    index = artistIndex;
    notifyListeners();
  }

  void startTimer() {
    timer ??= Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        pIndex++;
        if (pIndex > 5) {
          pIndex = 0;
        }
        carouselController.animateToPage(
          pIndex,
          duration: Duration(seconds: 2),
          curve: Curves.bounceIn,
        );
      },
    );
  }
}
