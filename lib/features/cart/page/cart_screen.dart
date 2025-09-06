import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/cart/page/checkout_screen.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final List<Map<String, dynamic>> items = [
    {
      "title": "Bell Pepper Red",
      "subtitle": "1kg, Price",
      "image": AppImages.pepper,
      "price": 4.99,
      "quantity": 1,
    },
    {
      "title": "Egg Chicken Red",
      "subtitle": "4pcs, Price",
      "image": AppImages.apple,
      "price": 1.99,
      "quantity": 1,
    },
    {
      "title": "Organic Bananas",
      "subtitle": "12kg, Price",
      "image": AppImages.banana,
      "price": 3.00,
      "quantity": 1,
    },
    {
      "title": "Ginger",
      "subtitle": "250gm, Price",
      "image": AppImages.mango,
      "price": 2.99,
      "quantity": 1,
    },
  ];

  double get total {
    return items.fold(
      0,
      (sum, item) =>
          sum + (item["price"] as double) * (item["quantity"] as int),
    );
  }

  void increaseQuantity(int index) {
    setState(() {
      items[index]["quantity"]++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (items[index]["quantity"] > 1) {
        items[index]["quantity"]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.only(
              top: 55,
              left: 16,
              right: 16,
              bottom: 32,
            ),
            color: AppColors.whiteColor,
            child: const Center(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Divider(color: Colors.grey.shade300, thickness: 1, height: 1),

          // Cart list
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              separatorBuilder: (context, index) =>
                  Divider(thickness: 1, color: Colors.grey.shade300),
              itemBuilder: (context, index) {
                final item = items[index];
                return buildCartItem(
                  item["title"] as String,
                  item["subtitle"] as String,
                  item["image"] as String,
                  item["price"] as double,
                  item["quantity"] as int,
                  index,
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => CheckoutScreen(total: total),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Go to Checkout",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        const SizedBox(width: 21),
                        Text(
                          '\$${total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCartItem(
    String title,
    String subtitle,
    String imagePath,
    double price,
    int quantity,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Image.asset(imagePath, width: 60, height: 60),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 10),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () => decreaseQuantity(index),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(color: AppColors.borderColor),
                        ),
                        child: Icon(Icons.remove, color: AppColors.greyColor),
                      ),
                    ),
                    const SizedBox(width: 20),

                    Text(
                      "$quantity",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),

                    GestureDetector(
                      onTap: () => increaseQuantity(index),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(color: AppColors.borderColor),
                        ),
                        child: Icon(Icons.add, color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Text(
            "\$${(price * quantity).toStringAsFixed(2)}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}