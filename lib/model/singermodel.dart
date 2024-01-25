import 'package:assets_audio_player/assets_audio_player.dart';

class SingerModel {
  String? name;
  String? img;
  List<Audio> list;
  SingerModel({this.name, this.img,required this.list});

  factory SingerModel.fromMap(Map<String, dynamic> map) {
    return SingerModel(
      name: map["name"],
      img: map["image"],
      list:
    );
  }
}
