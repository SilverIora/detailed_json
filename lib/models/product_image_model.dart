class ProductImageModel {
  final String image;
  final String alt;

  ProductImageModel({required this.image, required this.alt});

  factory ProductImageModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductImageModel(
      image: jsonData["image"],
      alt: jsonData["alt"],
    );
  }
}
