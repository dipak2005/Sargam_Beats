// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> tuLsiSongList=[
  Audio.network("https://pagalfree.com/musics/128-Pal%20-%20Jalebi%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network("https://pagalfree.com/images/128Pal%20-%20Jalebi%20128%20Kbps.jpg"),
      album: "Jalebi",
      artist: "Javed-Mohsin, Arijit Singh, Shreya Ghoshal",
      title: "Pal",
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
    metas: Metas(
      title: "Thodi Der",
      artist: "Farhan Saeed, Shreya Ghoshal",
      album: "Half Girlfriend",
      image: MetasImage.network("https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network("https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network("https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3"),
        album: "Raees",
        artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
        title: "Halka Halka",
      )
  ),
];