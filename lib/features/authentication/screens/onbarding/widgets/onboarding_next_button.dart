import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/onbarding/onboarding_controaller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';


class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace ,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnbardingController.Instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark ? TColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),
        ),
        );
  }
}