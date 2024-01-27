import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videoplay extends StatefulWidget {
  const Videoplay({super.key});

  @override
  State<Videoplay> createState() => _VideoplayState();
}

class _VideoplayState extends State<Videoplay> {
  int index = 0;
  late VideoPlayerController _controller;
  ChewieController? chewieController;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"))
      ..initialize().then((value) {
        chewieController = ChewieController(
          videoPlayerController: _controller,
          autoPlay: true,
          looping: true,
        );
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _controller.value.isInitialized
              ? SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                      InkWell(
                        onTap: () {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        },
                      )
                    ],
                  ))
              : CircularProgressIndicator(),
          if (chewieController != null)
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Chewie(
                controller: chewieController!,
              ),
            )
          // CarouselSlider(
          //     items: [
          //       Container(color: Colors.red),
          //       Container(color: Colors.blueAccent),
          //       Container(color: Colors.yellow),
          //       Container(color: Colors.grey),
          //     ],
          //     options: CarouselOptions(
          //       // height: 300,
          //       autoPlay: true,
          //       viewportFraction: 0.8,
          //       enlargeCenterPage: true,
          //       enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          //       aspectRatio: 1,
          //       autoPlayAnimationDuration: Duration(seconds: 1),
          //       // autoPlayInterval: Duration(milliseconds: 500),
          //       onPageChanged: (index, reason) {
          //         this.index = index;
          //         setState(() {});
          //         print("index $index");
          //       },
          //     )),
          // Container(
          //   height: 20,
          //   child: Align(
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       shrinkWrap: true,
          //       children: List.generate(
          //           4,
          //           (index) => Container(
          //                 decoration: BoxDecoration(
          //                     color: this.index == index ? Colors.black : Colors.grey,
          //                     shape: this.index == index ? BoxShape.rectangle : BoxShape.circle),
          //                 height: 15,
          //                 width: 15,
          //                 margin: EdgeInsets.all(5),
          //               )),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
