import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/ui/common_widgets/text/text_form_field.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class TakeDateOfBirth extends StatelessWidget {
  const TakeDateOfBirth({super.key, required this.continueBtn});

  final VoidCallback continueBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MTextWidget(
            text: 'My Birthday is',
            fontSize: 10,
            fontWeight: 2,
          ),
          const MTextWidget(
            text: 'Please Enter Your Birthdate',
            fontWeight: 0,
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          const MTextField(
            hintText: 'DD-MM-YY',
            prefixIcon: Icons.calendar_month,
            textInputType: TextInputType.datetime,
          ),
          const SizedBox(
            height: AppSize.sm,
          ),
          const Text('Age 25'),
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
