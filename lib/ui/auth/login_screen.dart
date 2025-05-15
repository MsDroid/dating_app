import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/text_form_field.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.lightPink,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            ClipOval(
              child: Image.asset(
                'assets/images/logo/logo.png', // Change to your logo asset
                height: 150,
              ),
            ),
            const SizedBox(
              height: AppSize.sm,
            ),
            // Welcome Text
            Text(
              "Milo with new peoples",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: AppColors.whiteColor, fontWeightDelta: 1, fontSizeDelta: 2),
            ),
            const SizedBox(height: AppSize.spaceBtwSection),
            const MTextField(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            const SizedBox(
              height: AppSize.spaceBtwInputField,
            ),

            const MTextField(
              hintText: 'Password',
              prefixIcon: Icons.password,
            ),

            const SizedBox(
              height: AppSize.spaceBtwSection,
            ),

            MButton(
              backgroundColor: AppColors.darkColor.withOpacity(0.5),
              foregroundColor: AppColors.whiteColor,
              onTap: () => context.go('/navigation-screen'),
              text: "Submit",
            ),

            // Google Button
            // _buildSocialButton("Continue with Google", "assets/icons/google.png"),

            // SizedBox(height: AppSize.spaceBtwItems),

            // Facebook Button
            // _buildSocialButton("Continue with Facebook", "assets/icons/facebook.png"),

            const SizedBox(height: AppSize.spaceBtwSection),

            // Divider with "or"
            const Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.white, thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.md),
                  child: Text(
                    "or",
                    // style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.white, thickness: 1),
                ),
              ],
            ),

            const SizedBox(height: AppSize.spaceBtwSection),

            // Login with Phone
            MButton(
              onTap: () => context.push('/login-with-mobile'),
              text: "Login with phone number",
            ),

            const SizedBox(height: AppSize.spaceBtwSection),

            // Sign Up
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Don't have an account?",
            //       style: Theme.of(context).textTheme.titleMedium!.apply(
            //             color: MColors.textColor,
            //           ),
            //       // style: GoogleFonts.poppins(color: Colors.white),
            //     ),
            //     const SizedBox(width: MSizes.sm),
            //     Text(
            //       'Register',
            //       style: Theme.of(context).textTheme.titleMedium,
            //     ),
            //     IconButton.filled(
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: MColors.white,
            //         foregroundColor: MColors.black,
            //       ),
            //       icon: const Icon(Icons.arrow_forward),
            //       onPressed: () {
            //         Get.toNamed(MRoutes.register);
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  // Social Media Login Button
  Widget _buildSocialButton(String text, String iconPath) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 24),
          const SizedBox(width: AppSize.sm),
          Text(
            text,
            // style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
