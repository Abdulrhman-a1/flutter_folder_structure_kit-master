import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/settings_menu_title.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  // User Profile Card
                  TUserProfileTile(
                    onPressed: () => Get.to(() => ProfileScreen()),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            // -- Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // -- Account Settings
                  TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: () => Get.to(() => OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons',
                      icon: Iconsax.discount_shape,
                      onTap: () {}),
                  TSettingsMenuTile(
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  // App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: 'App settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    icon: Iconsax.document_upload,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    icon: Iconsax.location,
                    traliling: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    traliling: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    traliling: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  // Logout Button
                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            AuthenticationRepository.instance.logout(),
                        child: Text('Logout')),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
