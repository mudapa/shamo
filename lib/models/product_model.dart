import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/gallery_model.dart';

class ProductModel {
  int? id;
  String name;
  double price;
  String description;
  String? tags;
  CategoryModel category;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<GalleryModel> galleries;

  ProductModel({
    this.id,
    required this.name,
    required this.price,
    required this.description,
    this.tags,
    required this.category,
    this.createdAt,
    this.updatedAt,
    required this.galleries,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int?,
      name: json['name'],
      price: double.parse(json['price'].toString()),
      description: json['description'],
      tags: json['tags'] as String?,
      category: CategoryModel.fromJson(json['category']),
      galleries: json['galleries']
          .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] ?? ""),
      updatedAt: DateTime.parse(json['updated_at'] ?? ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class UninitializedProductModel extends ProductModel {
  UninitializedProductModel()
      : super(
          id: null,
          name: '',
          price: 0,
          description: '',
          tags: '',
          category: CategoryModel(
            id: 0,
            name: "",
          ),
          galleries: [],
          createdAt: null,
          updatedAt: null,
        );
}
