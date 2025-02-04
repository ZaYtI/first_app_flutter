class Product {
  final String title;
  final String description;
  final List<String> characteristics;
  final double price;
  final String? imgUrl;

  const Product(
      {required this.title,
      required this.description,
      required this.characteristics,
      required this.price,
      this.imgUrl});

  Product copyWith({
    String? title,
    String? description,
    List<String>? characteristics,
    double? price,
  }) {
    return Product(
      title: title ?? this.title,
      description: description ?? this.description,
      characteristics: characteristics ?? this.characteristics,
      price: price ?? this.price,
    );
  }

  @override
  String toString() {
    return 'Product(title: $title, description: $description, characteristics: $characteristics, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product &&
        other.title == title &&
        other.description == description &&
        other.characteristics == characteristics &&
        other.price == price;
  }

  @override
  int get hashCode => Object.hash(title, description, characteristics, price);
}
