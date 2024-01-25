// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> atifSongList=[
  Audio.network(
    "https://pagalfree.com/musics/128-Baarish%20by%20Atif%20Aslam%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
    metas: Metas(
      title: "Baarish by Atif Aslam",
      album: "Half Girlfriend",
      artist: "Atif Aslam, Shashaa Tirupati",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Baarish%20by%20Atif%20Aslam%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
      extra: {
        "Music By": "Tanishk Bagchi",
      },
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      title: "Ajanabi",
      artist: "Atif Asalam",
      album: "Ajanabi",
      image: MetasImage.network("https://pagalfree.com/images/128Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network("https://pagalfree.com/images/128Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
      album: "Rafta Rafta",
      artist: "Atif Aslam",
      title: "Rafta Rafta",
      extra: {
        "Lyrict ":"Raj Ranjodh",
        "Music By":"Raj Ranjodh",
      },
    ),
  ),

];