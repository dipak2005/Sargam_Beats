class SingerModel {
  String? name;
  String? img;

  SingerModel({this.name, this.img});

  factory SingerModel.fromMap(Map<String, dynamic> map) {
    return SingerModel(
      name: map["name"],
      img: map["image"],
    );
  }
}
