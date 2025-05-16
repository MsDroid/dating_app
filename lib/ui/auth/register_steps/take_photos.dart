import 'package:bloc_flutter/ui/common_widgets/button/my_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/ui/common_widgets/text/text_form_field.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';

class TakeProfilePhotos extends StatelessWidget {
  const TakeProfilePhotos({super.key, required this.continueBtn});

  final VoidCallback continueBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MTextWidget(
            text: 'Choose Your Photos',
            fontSize: 10,
            fontWeight: 2,
          ),
          const MTextWidget(
            text: 'Upload at least 4 photos to get Started.',
            fontWeight: 0,
          ),
          const SizedBox(
            height: AppSize.spaceBtwItems,
          ),
          const MTextField(
            hintText: 'Choose a photo',
            prefixIcon: Icons.image,
            textInputType: TextInputType.text,
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
