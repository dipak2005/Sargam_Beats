// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class VideoProvider extends ChangeNotifier {
  CarouselController carouselController = CarouselController();
  int pIndex = 0;
  Timer? timer;
  final assetsAudioPlayer = AssetsAudioPlayer();
  int index = 0;
  List<Audio>? audio;
  List<Audio> recentPlayed=[];
  List<Audio> playList=[];
  List<Audio> searchList=[];
  void recentAdd(Audio audio){
    recentPlayed.add(audio);
    notifyListeners();
  }




  void changeIndex(int index) {
    pIndex = index;
    carouselController.animateToPage(index);
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
