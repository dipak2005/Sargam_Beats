// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> nehaSongList = [
  Audio.network("https://pagalfree.com/musics/192-Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/192Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.jpg"),
    album: "Jai Mummy Di",
    artist: "Jassie Gill, Neha Kakkar, Meet Bros",
    title: "Lamborghini",
  )
  ),
  Audio.network("https://pagalfree.com/musics/192-Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.mp3",
  metas: Metas(
    title: "Sawan Mein Lag Gayi Aag",
    artist: "Mika Singh, Payal Dev, Neha Kakkar, Badshah",
    album: "Ginny Weds Sunny",
    image: MetasImage.network("https://pagalfree.com/images/192Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.jpg"),
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3"),
    album: "Bheegi Bheegi",
    artist: "Neha Kakkar, Tony Kakkar",
    title: "Bheegi Bheegi",
  )
  ),

];
