import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class MIcon extends StatelessWidget {
  const MIcon({
    super.key,
    required this.icon,
    this.iconColor = AppColors.blackColor,
    this.size = AppSize.md,
    this.weight = AppSize.md,
  });

  final IconData icon;
  final Color iconColor;
  final double size;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: iconColor,
      weight: weight,
    );
  }
}
