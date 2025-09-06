import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/home/models/product_model_grid.dart';
import 'package:nectar_ui/features/home/widgets/product_cart_grid.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: TextStyles.titleStyle()),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: TextStyles.bodyStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: productsgrid.length,
          itemBuilder: (context, index) {
            return ProductCartGrid(grid: productsgrid[index]); 
          },
        ),
      ],
    );
  }
}
