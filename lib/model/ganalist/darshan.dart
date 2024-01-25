// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> darshanSongList = [
  Audio.network(
    "https://pagalfree.com/musics/128-Tere%20Naal%20-%20Tulsi%20Kumar%20And%20Darshan%20Raval%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tere Naal",
      artist: "Tulsi Kumar, Darshan Raval",
      album: "Tere Naal",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Tere%20Naal%20-%20Tulsi%20Kumar%20And%20Darshan%20Raval%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network("https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3"),
      album: "Ek Ladki Ko Dekha Toh Aisa Lag",
      artist: "Darshan Raval, Rochak Kohli",
      title: "Ek Ladki Ko Dekha Toh Aisa Laga",
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.mp3",
    metas: Metas(
      title: "Chogada",
      artist: "Darshan Raval, Asees Kaur",
      album: "Loveyatri",
      image: MetasImage.network("https://pagalfree.com/images/128Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.jpg"),
    ),
  ),
];
