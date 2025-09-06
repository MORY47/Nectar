import 'package:flutter/material.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/datails/page/product_details_screen.dart';
import 'package:nectar_ui/features/home/models/product_model.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: widget.model));
      },
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.borderColor, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.model.id,
                    child: Image.asset(
                      widget.model.image,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.name,
                  style: TextStyles.bodyStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  '${widget.model.quantity} kg',
                  style: TextStyles.smallStyle(color: AppColors.greyColor),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  '\$${(widget.model.price * widget.model.quantity).toStringAsFixed(2)}',
                  style: TextStyles.bodyStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.model.quantity++;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}