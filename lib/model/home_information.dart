class HomeInformation {
  int? id;
  String? title;
  int? price;
  String? country;
  String? city;
  String? rentalTime;
  String? category;
  String? image;
  double? rate;

  HomeInformation(
      {this.id,
      this.title,
      this.price,
      this.country,
      this.city,
      this.rentalTime,
      this.category,
      this.image,
      this.rate});

  HomeInformation.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['country'] = this.country;
    data['city'] = this.city;
    data['Rental_time'] = this.rentalTime;
    data['category'] = this.category;
    data['image'] = this.image;
    data['rate'] = this.rate;
    return data;
  }
}
