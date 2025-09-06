import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/home/models/product_model.dart';
import 'package:nectar_ui/features/home/widgets/product_cart.dart';

class ExclusiveOfferBuilder extends StatelessWidget {
  const ExclusiveOfferBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive offer', style: TextStyles.titleStyle()),
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
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCart(model: products [index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 15),
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}