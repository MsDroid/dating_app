import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';

class MTextWidget extends StatelessWidget {
  const MTextWidget({
    super.key,
    required this.text,
    this.textAlign = TextAlign.start,
    this.textColor = AppColors.darkColor,
    this.fontSize = 1,
    this.fontWeight = 1,
  });

  final String text;
  final TextAlign textAlign;
  final Color textColor;
  final double fontSize;
  final int fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.titleSmall!.apply(
              color: textColor,
              fontSizeDelta: fontSize,
              fontWeightDelta: fontWeight,
            ),
      ),
    );
  }
}
