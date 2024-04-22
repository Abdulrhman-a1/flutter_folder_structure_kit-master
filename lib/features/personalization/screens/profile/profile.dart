import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text('Profile'),
        showbackArrow: true,
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // Profile Picture
                    TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Change Profile Picture')),
                  ],
                ),
              ),
              // Details

              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  onPressed: () {}, title: 'Name', value: 'Abdulrhman'),
              TProfileMenu(onPressed: () {}, title: 'Username', value: 'ARN7'),

              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              //Heading Personal Info
              TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  icon: Iconsax.copy,
                  value: '3223'),
              TProfileMenu(
                  onPressed: () {}, title: 'E-mail', value: 'ewew@gmail.com'),
              TProfileMenu(
                  onPressed: () {}, title: 'Phone Number', value: '0547337061'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '1 Dec, 2002'),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
