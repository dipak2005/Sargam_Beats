// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> arrSongList = [
  Audio.network(
    "https://pagalfree.com/musics/128-Tum%20Hi%20Ho%20-%20Aashiqui%202%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tum Hi Ho",
      artist: "Arijit Singh",
      album: "Aashiqui 2",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Tum%20Hi%20Ho%20-%20Aashiqui%202%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Kabira%20-%20Yeh%20Jawaani%20Hai%20Deewani%20128%20Kbps.mp3",
      metas: Metas(
        title: "Kabira",
        artist: "Tochi Raina, Rekha Bhardwaj",
        album: "Yeh Jawaani Hai Deewani",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Kabira%20-%20Yeh%20Jawaani%20Hai%20Deewani%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Saware%20-%20Phantom%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Saware%20-%20Phantom%20128%20Kbps.jpg"),
        album: "Phantom",
        artist: "Arijit Singh, Pritam",
        title: "Saware",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Humdard%20-%20Ek%20Villain%20128%20Kbps.mp3",
      metas: Metas(
          title: "Humdard",
          artist: "Mithoon, Arijit Singh",
          album: "Ek Villain",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Humdard%20-%20Ek%20Villain%20128%20Kbps.jpg"),
          extra: {"video": ""})),
  Audio.network(
    "https://pagalfree.com/musics/128-Tere%20Hawaale%20-%20Laal%20Singh%20Chaddha%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tere Hawaale",
      artist: "Pritam, Arijit Singh, Shilpa Rao",
      album: "Laal Singh Chaddha",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Tere%20Hawaale%20-%20Laal%20Singh%20Chaddha%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.jpg"),
        album: "Creature 3D",
        artist: "Tony Kakkar, Mithoon, Arijit Singh",
        title: "Sawan Aaya Hai",
      )),
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
        "video": "assets/videos/lut.mp4",
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
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Satranga%20-%20Animal%20128%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Satranga%20-%20Animal%20128%20Kbps.jpg"),
        album: "Animal",
        artist: "Arijit Singh, Shreyas Puranik, Siddharth-Garima",
        title: "Satranga",
        extra: {
          "Lyricist": " Siddharth-Garima",
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/192-Haan%20Main%20Galat%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/192Haan%20Main%20Galat%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg"),
        album: "Love Aaj Kal",
        artist: "Pritam, Arijit Singh, Shashwat Singh",
        title: "Haan Main Galat",
        extra: {
          "Music By": "Pritam",
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/192-Haan%20Tum%20Ho%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
    metas: Metas(
      title: "Haan Tum Ho",
      artist: "Pritam, Arijit Singh, Shilpa Rao",
      album: "Love Aaj Kal",
      image: MetasImage.network(
          "https://pagalfree.com/images/192Haan%20Tum%20Ho%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/192-Shayad%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
          "https://pagalfree.com/images/192Shayad%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg",
        ),
        album: "Love Aaj Kal",
        artist: "Pritam, Arijit Singh",
        title: "Shayad",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Khairiyat%20-%20Chhichhore%20128%20Kbps.mp3",
      metas: Metas(
        title: "Khairiyat",
        artist: "Arijit Singh",
        album: "Chhichhore",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Khairiyat%20-%20Chhichhore%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Heeriye%20-%20Happy%20Hardy%20And%20Heer%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
          "https://pagalfree.com/images/128Heeriye%20-%20Happy%20Hardy%20And%20Heer%20128%20Kbps.jpg",
        ),
        album: "Happy Hardy And Heer",
        artist: "Arijit Singh, Shreya Ghoshal, Ritu Raj, Aishwarya Majmudar",
        title: "Heeriye",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.jpg"),
        album: "Creature 3D",
        artist: "Tony Kakkar, Mithoon, Arijit Singh",
        title: "Sawan Aaya Hai",
      )),
];

