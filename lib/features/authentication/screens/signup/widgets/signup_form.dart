import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_conditions_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(child: Column(
      children: [
        //first and Last Name
        Row(
          children: [
            //First
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
    
            const SizedBox(width: TSizes.spaceBtwInputFields,),
            //lLast
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        // Username
        TextFormField(
                expands: false, 
                decoration: InputDecoration(labelText: TTexts.username,prefixIcon: Icon(Iconsax.user_edit), ),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Email
         TextFormField(
                expands: false, 
                decoration: InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct), ),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Phone number
         TextFormField(
                expands: false, 
                decoration: InputDecoration(labelText: TTexts.phoneNo ,prefixIcon: Icon(Iconsax.call), ),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Password
         TextFormField(
                obscureText: true,
                expands: false, 
                decoration: InputDecoration(labelText: TTexts.username,prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash) ),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Terms% Condition Checkbox
        TermsAndConditionCheckbox(),
    
        const SizedBox(height: TSizes.spaceBtwSections,),
        //sign up Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: Text(TTexts.createAccount)),)
    
      ],
      )
    );
  }
}

