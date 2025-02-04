import 'package:flutter_first_application/model/characteristic.model.dart';

class Product {
  final String title;
  final String description;
  final List<Characteristic> characteristics;
  final double price;
  final String? imgUrl;

  const Product(
      {required this.title,
      required this.description,
      required this.characteristics,
      required this.price,
      this.imgUrl});
}
