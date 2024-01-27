// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> nehaSongList = [
  Audio.network(
      "https://pagalfree.com/musics/192-Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/192Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.jpg"),
        album: "Jai Mummy Di",
        artist: "Jassie Gill, Neha Kakkar, Meet Bros",
        title: "Lamborghini",
      )),
  Audio.network(
      "https://pagalfree.com/musics/192-Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.mp3",
      metas: Metas(
        title: "Sawan Mein Lag Gayi Aag",
        artist: "Mika Singh, Payal Dev, Neha Kakkar, Badshah",
        album: "Ginny Weds Sunny",
        image: MetasImage.network(
            "https://pagalfree.com/images/192Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.jpg"),
        album: "Bheegi Bheegi",
        artist: "Neha Kakkar, Tony Kakkar",
        title: "Bheegi Bheegi",
      )),
  Audio.network("https://pagalfree.com/musics/128-Dil%20Ko%20Karaar%20Aaya%20-%20Neha%20Kakkar%20128%20Kbps.mp3",
  metas: Metas(
    title: "Dil Ko Karaar Aaya",
    artist: "Yasser Desai, Neha Kakkar, Rajat Nagpal",
    album: "Dil Ko Karaar Aaya",
    image: MetasImage.network("https://pagalfree.com/images/128Dil%20Ko%20Karaar%20Aaya%20-%20Neha%20Kakkar%20128%20Kbps.jpg"),
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Mere%20Angne%20Mein%20-%20Neha%20Kakkar%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Mere%20Angne%20Mein%20-%20Neha%20Kakkar%20128%20Kbps.jpg"),
    album: "Mere Angne Mein",
    artist: "Neha Kakkar, Raja Hasan",
    title: "Mere Angne Mein",

  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Cheez%20Badi%20-%20Machine%20128%20Kbps.mp3",
  metas: Metas(
    title: "Cheez Badi",
    artist: "Neha Kakkar, Udit Narayan",
    album: "Machine",
    image:MetasImage.network("https://pagalfree.com/images/128Cheez%20Badi%20-%20Machine%20128%20Kbps.jpg"),

  )
  ),
  Audio.network("https://pagalfree.com/musics/128-London%20Thumakda%20-%20Queen%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128London%20Thumakda%20-%20Queen%20128%20Kbps.jpg"),
    album: "Queen",
    artist: "Amit Trivedi, Neha Kakkar, Sonu Kakkar, Labh Janjua",
    title: "London Thumakda",
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Dilbar%20-%20Satyameva%20Jayate%20128%20Kbps.mp3",
  metas: Metas(
    title: "Dilbar",
    artist: "Neha Kakkar, Dhvani Bhanushali, Ikka",
     album: "Satyameva Jayate",
    image:MetasImage.network("https://pagalfree.com/images/128Dilbar%20-%20Satyameva%20Jayate%20128%20Kbps.jpg"),
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Maahi%20Ve%20-%20Wajah%20Tum%20Ho%20128%20Kbps.mp3",
  metas: Metas(
    image:MetasImage.network("https://pagalfree.com/images/128Maahi%20Ve%20-%20Wajah%20Tum%20Ho%20128%20Kbps.jpg"),
    album: "Wajah Tum Ho",
    artist: "Neha Kakkar",
    title: "Maahi Ve",

  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Coca%20Cola%20-%20Luka%20Chuppi%20128%20Kbps.mp3",

  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Coca%20Cola%20-%20Luka%20Chuppi%20128%20Kbps.jpg"),
     album: "Luka Chuppi",
    artist: "Neha Kakkar, Young Desi, Tony Kakkar",
    title: "Coca Cola",
    extra: {
      "video":""
    }
  ))
];
