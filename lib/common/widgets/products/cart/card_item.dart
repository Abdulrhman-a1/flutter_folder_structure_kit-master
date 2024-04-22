import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCardItem extends StatelessWidget {
  const TCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedimage(
          imagmeUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          BackgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtwItems),
    
        // Title , Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: TProductTitleText(
                    title: 'Black Sport shoes', maxLines: 1),
              ),
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',
                        style:
                            Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green ',
                        style:
                            Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'Size ',
                        style:
                            Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'UK 08 ',
                        style:
                            Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
