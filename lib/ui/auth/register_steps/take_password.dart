import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/ui/common_widgets/text/text_form_field.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class TakePassword extends StatelessWidget {
  const TakePassword({super.key, required this.continueBtn});

  final VoidCallback continueBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MTextWidget(
            text: 'Set Your Password',
            fontSize: 10,
            fontWeight: 2,
          ),
          const MTextWidget(
            text: 'Create Strong Password \nfor Secure Account',
            fontWeight: 0,
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          const MTextField(
            hintText: 'Create Password',
            prefixIcon: Icons.password,
            textInputType: TextInputType.text,
            isObscure: true,
          ),
          const Spacer(),
          MButton(
            onTap: continueBtn,
            text: "Continue",
            foregroundColor: AppColors.whiteColor,
            backgroundColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}
