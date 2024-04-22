import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showbackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
                SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile), labelText: 'Name')),
                SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building_31),
                              labelText: 'Street')),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: 'Postal Code')),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.buliding),
                              labelText: 'City')),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: 'State')),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.global),
                        labelText: 'Countery')),
                SizedBox(height: TSizes.spaceBtwInputFields),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('Save')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
