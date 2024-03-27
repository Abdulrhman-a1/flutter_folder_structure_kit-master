import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/onbarding/onboarding_controaller.dart';
import 'package:t_store/features/authentication/screens/onbarding/widgets/onboarding_dot_navigation.dart.dart';
import 'package:t_store/features/authentication/screens/onbarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onbarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onbarding/widgets/onboarding_skip.dart';

import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnbardingController());

    return Scaffold(
      body: Stack(
         children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                tital: TTexts.onBoardingTitle1,
                Subtital:TTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                image: TImages.onBoardingImage2,
                tital: TTexts.onBoardingTitle2,
                Subtital:TTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                image: TImages.onBoardingImage3,
                tital: TTexts.onBoardingTitle3,
                Subtital:TTexts.onBoardingSubTitle3,
                ),

            ],
          ),

          OnboardingSkip(),

          OnboardingDotNavigation(),

          OnboardingNextButton()
         ],
      ),
    );
  }
}









