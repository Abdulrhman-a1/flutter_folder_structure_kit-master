import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedimage extends StatelessWidget {
  const TRoundedimage({
    super.key,
    this.width,
    this.height,
    required this.imagmeUrl,
    this.applyImageRadius = true,
    this.border,
    this.BackgroundColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imagmeUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color BackgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: BackgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                image: isNetworkImage
                    ? NetworkImage(imagmeUrl)
                    : AssetImage(imagmeUrl) as ImageProvider,
                fit: fit)),
      ),
    );
  }
}
