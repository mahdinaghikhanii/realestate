class HomeInformationModel {
  int? id;
  String? title;
  int? price;
  String? country;
  String? city;
  String? rentalTime;
  String? category;
  String? image;
  double? rate;

  HomeInformationModel(
      {this.id,
      this.title,
      this.price,
      this.country,
      this.city,
      this.rentalTime,
      this.category,
      this.image,
      this.rate});

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
    data['rate'] = rate;
    return data;
  }
}
