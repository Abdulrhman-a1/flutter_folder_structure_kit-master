import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/social_buttons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(TTexts.signupTitle ,style: Theme.of(context).textTheme.headlineMedium, ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //form
              TSignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections,),

              TFormDivider(DividerText: TTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwInputFields,),


              TSocialButton(),
            ],
          ),
          ),
      ),
    );
  }
}

