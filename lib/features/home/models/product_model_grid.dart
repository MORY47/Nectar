import 'package:nectar_ui/core/constants/app_images.dart';

class ProductModelGrid {
  final int id;
  final String name;
  final String image;
   int quantity;
  final double price;

  ProductModelGrid({
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
  });
}

List<ProductModelGrid> productsgrid = [
  ProductModelGrid(
    id: 1,
    name: 'Mango',
    image: AppImages.mango,
    quantity: 1 ,
    price: 3.5,
  ),

  ProductModelGrid(
    id: 2,
    name: 'Watermelon',
    image: AppImages.watermelon,
    quantity: 1 ,
    price: 4.0,
  ),

  ProductModelGrid(
    id: 3,
    name: 'Pepper',
    image: AppImages.pepper,
    quantity: 1,
    price: 3.0,
  ),

  ProductModelGrid(
    id: 4,
    name: 'Ginger',
    image: AppImages.ginger,
    quantity: 1,
    price: 2.0,
  ),

];