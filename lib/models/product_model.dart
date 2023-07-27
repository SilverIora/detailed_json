
import 'package:design/models/product_image_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<ProductImageModel> images;
  final List<String> tags;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images,
      required this.tags});

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      description: jsonData["description"],
      price: jsonData["price"].toDouble(),
      discountPercentage: jsonData["discountPercentage"],
      rating: jsonData["rating"],
      stock: jsonData["stock"],
      brand: jsonData["brand"],
      category: jsonData["category"],
      thumbnail: jsonData["thumbnail"],
      images: (jsonData["images"] as List)
          .map((e) => ProductImageModel.fromJson(e))
          .toList(),
      tags: (jsonData["tags"] as List).map((e) => e.toString()).toList(),
    );
  }
}
