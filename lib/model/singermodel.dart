import 'package:assets_audio_player/assets_audio_player.dart';

class SingerModel {
  String? name;
  String? img;
  List<AudioClass>? audioList;

  SingerModel({this.name, this.img, this.audioList});

  factory SingerModel.fromMap(Map<String, dynamic> map) {
    var audio=(map["artist"] as List).map((e) {
      return AudioClass.fromMap(e);
    });
    return SingerModel(
      name: map["name"],
      img: map["image"],
      // audioList: audio,
    );
  }
}

class AudioClass {
  Metas? metas;
  String? title;
  String? artist;
  String? album;
  MetasImage? image;

  AudioClass({this.metas, this.title, this.artist, this.album, this.image});

  factory AudioClass.fromMap(Map<String, dynamic> map) {
    return AudioClass(
      image: map["image"],
      album: map["album"],
      artist: map["artist"],
      title: map["title"],
      metas: map["metas"],
    );
  }
}
