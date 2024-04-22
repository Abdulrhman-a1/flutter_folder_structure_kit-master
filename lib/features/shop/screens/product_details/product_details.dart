import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';

import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/constants/sizes.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Product Image Slider
            TProductImageSlider(),

            // 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // - Rating & Share
                  TRatingAndShare(),

                  // - Price , Title , Stack & Brand
                  TProductMetaDate(),

                  // - Attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // - Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // - Description
                  TSectionHeading(
                      title: 'Description', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwSections),
                  ReadMoreText(
                    'This is a Proudct descripiton for blue nike slevver less wet , ther are more things that can be added but i am busy',
                    trimLength: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // - Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          )),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
