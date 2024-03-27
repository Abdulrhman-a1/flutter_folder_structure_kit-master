import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.tital, required this.Subtital
  });
  final String image, tital , Subtital;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace    ),
      child: Column(
        children: [
          Image(
            height: THelperFunctions.screenHeight() * 0.6,
            width: THelperFunctions.screenWidth() * 0.8,
            image: AssetImage(image),
          ),
      
          Text(
          tital, 
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
          )
          ,
          const SizedBox(height: TSizes.spaceBtwItems,),
      
          Text(
          Subtital, 
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
          ),
      
        ],
      ),
    );
  }
}