import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.darkPink),
      borderRadius: BorderRadius.circular(20),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: ListView(
        controller: scrollController,
        children: [
          const CircleAvatar(
            radius: 40,
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          const MTextWidget(
            text: 'Verify Your Account',
            fontSize: 1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSize.md,
          ),
          const MTextWidget(
            text: 'We have sent you a 4 digit verification code to your number. Please check.',
            fontSize: 0,
            textAlign: TextAlign.center,
            textColor: AppColors.darkColor,
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          Pinput(
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            // validator: (s) {
            //   return s == '2222' ? null : 'Pin is incorrect';
            // },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          MButton(
            onTap: () {
              Navigator.pop(context, 'true');
            },
            text: "Verify",
            backgroundColor: AppColors.darkPink,
            foregroundColor: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
