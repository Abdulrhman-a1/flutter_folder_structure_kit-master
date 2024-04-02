import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ----- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //----- Appbar
                  THomeAppbar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //----- Searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                    onTap: () {},
                  ),
                  // Spaceing
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //----- Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //----- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        // Spacing
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //----- Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ----- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //----- Promo Slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),

                  //Spacing
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //----- Popular Products
                  TGridLayout(
                    itemCount: 3,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
