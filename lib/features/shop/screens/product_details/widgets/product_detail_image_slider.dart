
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widges.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgesWiget(
        child: Container(
      color: dark ? TColors.darkerGrey : TColors.light,
      child: Stack(
        children: [
          // main Large Image
          SizedBox(
            height: 400,
            child: Padding(
              padding:
                  const EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(
                  child:
                      Image(image: AssetImage(TImages.productImage5))),
            ),
          ),
          //Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (_, __) => SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                itemBuilder: (_, index) => TRoundedimage(
                    width: 80,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                    BackgroundColor:
                        dark ? TColors.dark : TColors.white,
                    fit: BoxFit.contain,
                    imagmeUrl: TImages.productImage3),
              ),
            ),
          ),
    
          //Appbar
          TAppbar(
            showbackArrow: true,
            action: [
              TCircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
