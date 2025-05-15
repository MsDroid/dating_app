import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class MButton extends StatelessWidget {
  const MButton({
    super.key,
    required this.onTap,
    required this.text,
    this.foregroundColor = Colors.black,
    this.backgroundColor = Colors.white,
  });

  final VoidCallback onTap;
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppSize.md),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: foregroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
