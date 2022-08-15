class HomeInformationModel {
  late int id;
  late String title;
  int? price;
  late String country;
  late String city;
  late String rentalTime;
  late String category;
  late String image;
  double? rate;
  late String iconCategory;
  late String sizeHome;
  late int bedRoom;
  late int bathRoom;
  late bool parking;
  late String description;

  HomeInformationModel(
      {required this.id,
      required this.title,
      this.price,
      required this.country,
      required this.city,
      required this.rentalTime,
      required this.category,
      required this.description,
      required this.image,
      required this.sizeHome,
      this.rate,
      required this.iconCategory,
      required this.parking,
      required this.bathRoom,
      required this.bedRoom});

  HomeInformationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    country = json['country'];
    city = json['city'];
    rentalTime = json['Rental_time'];
    category = json['category'];
    image = json['image'];
    rate = json['rate'];
    iconCategory = json['icon_category'];
    sizeHome = json['size_home'];
    parking = json['parking'];
    bathRoom = json['bathroom'];
    bedRoom = json['bedroom'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['country'] = country;
    data['city'] = city;
    data['Rental_time'] = rentalTime;
    data['category'] = category;
    data['image'] = image;
    data['rate'] = rate as double;
    data['icon_category'] = iconCategory;
    return data;
  }
}
