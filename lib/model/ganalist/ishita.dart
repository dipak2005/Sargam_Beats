// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> ishItaSongList = [
  Audio.network(
    "https://pagalfree.com/musics/128-Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.mp3",
    metas: Metas(
      title: "Mann Jogiya",
      artist: "Arijit Singh, Ishita Vishwakarma, Anique",
      album: "Mann Jogiya",
      image: MetasImage.network("https://pagalfree.com/images/128Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network("https://pagalfree.com/images/128Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.jpg"),
        album: "Meri Sohniya",
        artist: "Ishita Vishwakarma, Gireesh Thakur",
        title: "Meri Sohniya",
      )
  ),
];