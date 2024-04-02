import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: TSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Popular Categories',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (showActionButton)
                TextButton(onPressed: () {}, child: Text(buttonTitle)),
            ],
          ),
        ],
      ),
    );
  }
}
