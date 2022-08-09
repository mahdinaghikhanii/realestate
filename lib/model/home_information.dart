class HomeInformationModel {
  late int id;
  late String title;
  int? price;
  String? country;
  String? city;
  String? rentalTime;
  late String category;
  late String image;
  double? rate;
  late String iconCategory;

  HomeInformationModel(
      {required this.id,
      required this.title,
      this.price,
      this.country,
      this.city,
      this.rentalTime,
      required this.category,
      required this.image,
      this.rate,
      required this.iconCategory});

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
