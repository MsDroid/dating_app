import 'package:bloc_flutter/ui/common_widgets/bottomsheet/otp_verification.dart';
import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/button/my_text_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/ui/common_widgets/text/text_form_field.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class LoginWithMobile extends StatelessWidget {
  const LoginWithMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.whiteColor,
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MTextWidget(
              text: 'Continue with \nPhone Number',
              fontSize: 10,
              fontWeight: 2,
            ),
            const MTextWidget(
              text: 'Please Enter your mobile number here',
              fontWeight: 0,
            ),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),
            const MTextField(
              hintText: 'Mobile',
              prefixIcon: Icons.phone,
              textInputType: TextInputType.number,
            ),
            const Spacer(),
            MButton(
              onTap: () async {
                showModalBottomSheet(
                  useRootNavigator: true,
                  showDragHandle: true,
                  isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (BuildContext context) {
                    return DraggableScrollableSheet(
                      expand: false,
                      initialChildSize: 0.55,
                      maxChildSize: 1.0,
                      builder: (context, scrollController) {
                        return OtpVerification(
                          scrollController: scrollController,
                        );
                      },
                    );
                  },
                ).then((value) {
                  if (value != null && value == "true") {
                    context.push('/register-steps');
                  }
                });
              },
              text: "Continue",
              foregroundColor: AppColors.whiteColor,
              backgroundColor: AppColors.darkColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MTextWidget(text: 'I have an account ?'),
                MTextButton(
                  text: "Login",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
