// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> shreyaSongList = [
  Audio.network(
      "https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Halka%20Halka%20-%20Raees%20128%20Kbps.jpg"),
        album: "Raees",
        artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
        title: "Halka Halka",
      )),
  Audio.network(
    "https://pagalfree.com/musics/128-Pal%20-%20Jalebi%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Pal%20-%20Jalebi%20128%20Kbps.jpg"),
      album: "Jalebi",
      artist: "Javed-Mohsin, Arijit Singh, Shreya Ghoshal",
      title: "Pal",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
    metas: Metas(
      title: "Thodi Der",
      artist: "Farhan Saeed, Shreya Ghoshal",
      album: "Half Girlfriend",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Halka%20Halka%20-%20Raees%20128%20Kbps.jpg"),
        album: "Raees",
        artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
        title: "Halka Halka",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Slow%20Motion%20-%20Bharat%20128%20Kbps.mp3",
      metas: Metas(
          title: "Slow Motion",
          artist: "Nakash Aziz, Shreya Ghoshal",
          album: "Bharat",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Slow%20Motion%20-%20Bharat%20128%20Kbps.jpg"))),
  Audio.network("https://pagalfree.com/musics/128-Hume%20Tumse%20Pyaar%20Kitna%20-%20Female%20-%20Hume%20Tumse%20Pyaar%20Kitna%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Hume%20Tumse%20Pyaar%20Kitna%20-%20Female%20-%20Hume%20Tumse%20Pyaar%20Kitna%20128%20Kbps.jpg"),
    album: "Hume Tumse Pyaar Kitna",
    artist: "Shreya Ghoshal",
    title: "Hume Tumse Pyaar Kitna",
    
  )),
  Audio.network("https://pagalfree.com/musics/128-Ghar%20More%20Pardesiya%20-%20Kalank%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Ghar%20More%20Pardesiya%20-%20Kalank%20128%20Kbps.jpg"),
    title: "Ghar More Pardesiya",
    artist: "Shreya Ghoshal",
    album: "Kalank",
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Red%20Red%20Najariya%20-%20Laal%20Kaptaan%20128%20Kbps.mp3",
  metas: Metas(
    album: "Laal Kaptaan",
    artist: "Shreya Ghoshal",
    title: "Red Red Najariya",
    image: MetasImage.network("https://pagalfree.com/images/128Red%20Red%20Najariya%20-%20Laal%20Kaptaan%20128%20Kbps.jpg"),
    
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Sapna%20Hai%20Sach%20Hai%20-%20Panipat%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Sapna%20Hai%20Sach%20Hai%20-%20Panipat%20128%20Kbps.jpg"),
    title: "Sapna Hai Sach Hai",
    artist: "Abhay Jodhpurkar, Shreya Ghoshal",
     album: "Panipat",
  )),
  Audio.network("https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
  metas: Metas(
    album: "Half Girlfriend",
    artist: "Farhan Saeed, Shreya Ghoshal",
    title: "Thodi Der",
    image: MetasImage.network("https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
  )),
  Audio.network("https://pagalfree.com/musics/128-Manwa%20Laage%20-%20Happy%20New%20Year%20128%20Kbps.mp3",
  metas: Metas(
    image: MetasImage.network("https://pagalfree.com/images/128Manwa%20Laage%20-%20Happy%20New%20Year%20128%20Kbps.jpg"),
    title: "Manwa Laage",
     artist: "Vishal-Shekhar, Arijit Singh, Shreya Ghoshal",
    album: "Happy New Year",
    
  )
  ),
  Audio.network("https://pagalfree.com/musics/128-Drama%20Queen%20-%20Hasee%20Toh%20Phasee%20128%20Kbps.mp3",
  metas: Metas(
    album: "Hasee Toh Phasee",
    artist: "Vishal-Shekhar, Vishal Dadlani, Shreya Ghoshal",
    title: "Drama Queen",
    image: MetasImage.network("https://pagalfree.com/images/128Drama%20Queen%20-%20Hasee%20Toh%20Phasee%20128%20Kbps.jpg"),
    extra: {
      "vidoe":""
    }
  ))
];
