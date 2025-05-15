import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/device/device_utility.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  const MTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.prefixIconColor = AppColors.darkPink,
    this.textInputType = TextInputType.text,
    this.isObscure = false,
    // required this.editingController,
  });

  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final TextInputType textInputType;
  final bool isObscure;
  // final TextEditingController editingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: editingController,
      onTapOutside: (event) {
        MDeviceUtils.hideKeyboard(context);
      },
      keyboardType: textInputType,
      obscureText: isObscure,
      cursorColor: AppColors.darkPink,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          filled: true,
          fillColor: AppColors.whiteColor,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppSize.md),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppSize.md),
          )),
    );
  }
}
