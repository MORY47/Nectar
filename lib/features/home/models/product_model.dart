import 'package:nectar_ui/core/constants/app_images.dart';

class ProductModel {
  final int id;
  final String name;
  final String image;
   int quantity;
  final double price;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: 'Apple',
    image: AppImages.apple,
    quantity: 1 ,
    price: 3.5,
  ),

  ProductModel(
    id: 2,
    name: 'Banana',
    image: AppImages.banana,
    quantity: 1 ,
    price: 4.0,
  ),

  ProductModel(
    id: 3,
    name: 'Orange',
    image: AppImages.orange,
    quantity: 1,
    price: 3.0,
  ),

  ProductModel(
    id: 4,
    name: 'Grapes',
    image: AppImages.grape,
    quantity: 1,
    price: 2.0,
  ),

];