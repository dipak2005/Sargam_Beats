// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> tuLsiSongList = [
  Audio.network(
    "https://pagalfree.com/musics/128-O%20Saki%20Saki%20-%20Batla%20House%20128%20Kbps.mp3",
    metas: Metas(
      title: "O Saki Saki",
      artist: "Neha Kakkar, Tulsi Kumar, B Praak",
      album: "Batla House",
      image: MetasImage.network(
          "https://pagalfree.com/images/128O%20Saki%20Saki%20-%20Batla%20House%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
        "https://pagalfree.com/images/128Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.jpg",
      ),
      album: "Kabir Singh",
      artist: "Tulsi Kumar, Akhil Sachdeva",
      title: "Tera Ban Jaunga",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tu Laung Main Elaachi",
      artist: "Tulsi Kumar",
      album: "Luka Chuppi",
      image: MetasImage.network(
        "https://pagalfree.com/images/128Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.jpg",
      ),
    ),
  ),
];
