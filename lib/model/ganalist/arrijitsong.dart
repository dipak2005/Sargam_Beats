// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> arrSongList = [
  Audio.network(
    "https://pagalfree.com/musics/128-Banda%20-%20Dunki%20128%20Kbps.mp3",
    metas: Metas(
      title: "Banda",
      album: "Dunki",
      artist: "Pritam, Diljit Dosanjh, Kumaar",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Banda%20-%20Dunki%20128%20Kbps.jpg"),
      extra: {
        "Lyricist": "Kumaar",
      },
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-O%20Maahi%20-%20Dunki%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128O%20Maahi%20-%20Dunki%20128%20Kbps.jpg"),
      artist: "Pritam, Arijit Singh, Irshad Kamil",
      title: "O Maahi",
      album: "Dunki",
      extra: {
        "Lyricist": "Irshad Kamil",
      },
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Lutt%20Putt%20Gaya%20-%20Dunki%20128%20Kbps.mp3",
    metas: Metas(
      title: "Lutt Putt Gaya",
      album: "Dunki",
      artist: "Pritam, Arijit Singh, Swanand Kirkire, IP Singh",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Lutt%20Putt%20Gaya%20-%20Dunki%20128%20Kbps.jpg"),
      extra: {
        "Lyricist": "Swanand Kirkire, IP Singh",
      },
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Ruaan%20-%20Tiger%203%20128%20Kbps.mp3",
    metas: Metas(
        title: "Ruaan",
        artist: "Pritam, Arijit Singh, Irshad Kamil",
        album: "Tiger 3",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Ruaan%20-%20Tiger%203%20128%20Kbps.jpg"),
        extra: {
          "Lyricist": "Irshad Kamil",
        }
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Satranga%20-%20Animal%20128%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network("https://pagalfree.com/images/128Satranga%20-%20Animal%20128%20Kbps.jpg"),
        album: "Animal",
        artist: "Arijit Singh, Shreyas Puranik, Siddharth-Garima",
        title: "Satranga",
        extra: {
          "Lyricist": " Siddharth-Garima",
        }
    ),
  ),
];