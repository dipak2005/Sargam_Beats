// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class VideoProvider extends ChangeNotifier {
  CarouselController carouselController = CarouselController();
  int pIndex = 0;
  Timer? timer;

  void changeIndex(int index) {
    pIndex = index;
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
        carouselController.animateToPage(pIndex,
            duration: Duration(seconds: 2), curve: Curves.bounceIn);
      },
    );
  }
}
