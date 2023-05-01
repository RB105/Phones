class PhonesModel {
  String? name;
  String? image;
  String? memory;
  String? color;
  String? howMuch;

  PhonesModel({this.name, this.image, this.memory, this.color, this.howMuch});

  PhonesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    memory = json['memory'];
    color = json['color'];
    howMuch = json['how_much'];
  }
}
