import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MTextButton extends StatelessWidget {
  const MTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgrountColor = Colors.transparent,
    this.foregrountColor = AppColors.darkColor,
  });

  final String text;
  final VoidCallback onTap;
  final Color backgrountColor;
  final Color foregrountColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgrountColor,
        foregroundColor: foregrountColor,
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
