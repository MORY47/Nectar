import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/home/models/product_model_grid.dart';

class ProductCartGrid extends StatefulWidget {
  const ProductCartGrid({
    super.key,
    required this.grid,
  });

  final ProductModelGrid grid;

  @override
  State<ProductCartGrid> createState() => _ProductCartGridState();
}

class _ProductCartGridState extends State<ProductCartGrid> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: AppColors.borderColor,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                widget.grid.image,
                fit: BoxFit.contain,
                width: 100, 
              ),
            ),
      
            const SizedBox(height: 25),
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.grid.name,
                  style: TextStyles.bodyStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${widget.grid.quantity} kg',
                  style: TextStyles.smallStyle(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
      
            const SizedBox(height: 20),
      
            Row(
              children: [
                Text(
                  '\$${(widget.grid.price * widget.grid.quantity).toStringAsFixed(2)}',
                  style: TextStyles.bodyStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.grid.quantity++;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                    ),
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