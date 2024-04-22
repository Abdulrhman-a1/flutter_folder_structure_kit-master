import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TOrderScreen extends StatelessWidget {
  const TOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, index) => SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 10,
      itemBuilder: (_, index) => TRoundedContainer(
        padding: EdgeInsets.all(TSizes.md),
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //     Row 1
            Row(
              children: [
                // 1  Icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2),

                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),
                // Icon
                IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm)),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            //    Row  2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1  Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#242f4]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // 1  Icon
                      Icon(Iconsax.calculator),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('03 Feb 2025',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
