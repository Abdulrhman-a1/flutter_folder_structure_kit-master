import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/product_cart/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(title: Text('Sports shirts'), showbackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              TRoundedimage(
                  width: double.infinity,
                  height: null,
                  imagmeUrl: TImages.promoBanner3,
                  applyImageRadius: true),

              SizedBox(height: TSizes.spaceBtwSections),

              // Sub Categories

              // Sports shirts
              Column(
                children: [
                  // Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  SizedBox(height: TSizes.spaceBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),

              // Sports Equipments

              Column(
                children: [
                  // Heading
                  TSectionHeading(title: 'Sports Equipments', onPressed: () {}),
                  SizedBox(height: TSizes.spaceBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),

              // Track suits

              Column(
                children: [
                  // Heading
                  TSectionHeading(title: 'Track suits', onPressed: () {}),
                  SizedBox(height: TSizes.spaceBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
