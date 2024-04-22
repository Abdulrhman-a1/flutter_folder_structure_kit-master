import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.traliling,
      this.onTap});

  final String title, subtitle;
  final IconData icon;
  final Widget? traliling;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: traliling,
      onTap: onTap,
    );
  }
}
