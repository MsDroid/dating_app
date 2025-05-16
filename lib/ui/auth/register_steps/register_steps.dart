import 'package:bloc_flutter/ui/auth/register_steps/take_dob.dart';
import 'package:bloc_flutter/ui/auth/register_steps/take_password.dart';
import 'package:bloc_flutter/ui/auth/register_steps/take_photos.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import 'take_name.dart';

class RegisterSteps extends StatefulWidget {
  const RegisterSteps({super.key});

  @override
  State<RegisterSteps> createState() => _RegisterStepsState();
}

class _RegisterStepsState extends State<RegisterSteps> {
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  double progress = 0.2;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};
  final dashImages = [
    'assets/images/logo/logo.png',
    'assets/images/logo/logo.png',
    'assets/images/logo/logo.png',
    'assets/images/logo/logo.png',
    'assets/images/logo/logo.png',
  ];

  void increaseProgress() {
    if (progress < 1) {
      setState(() => progress += 0.2);
    } else {
      setState(() => progress = 0);
    }
  }

  void continueBtn() {
    setState(() {
      activeStep += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.whiteColor,
        title: const Text(''),
      ),
      body: Column(
        children: [
          EasyStepper(
            enableStepTapping: false,
            activeStep: activeStep,
            lineStyle: const LineStyle(
              activeLineColor: AppColors.darkColor,
              lineLength: 50,
              lineType: LineType.normal,
              lineThickness: 1,
              lineSpace: 1,
              lineWidth: 10,
              unreachedLineType: LineType.dashed,
            ),
            stepShape: StepShape.rRectangle,
            stepBorderRadius: 15,
            borderThickness: 1,
            internalPadding: 10,
            stepRadius: 18,
            finishedStepBorderColor: Colors.deepOrange,
            finishedStepTextColor: Colors.deepOrange,
            finishedStepBackgroundColor: Colors.deepOrange,
            activeStepIconColor: Colors.deepOrange,
            showLoadingAnimation: true,
            steps: [
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 0 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Name',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 1 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Date of Birth',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 2 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Password',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 3 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Photos',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 4 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Gender',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 4 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Why You Here',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 4 ? 1 : 0.3,
                    child: Image.asset('assets/images/logo/logo.png'),
                  ),
                ),
                customTitle: const Text(
                  'Your Interests',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            onStepReached: (index) => setState(() => activeStep = index),
          ),
          Expanded(
            child: activeStep == 0
                ? TakeName(
                    continueBtn: continueBtn,
                  )
                : activeStep == 1
                    ? TakeDateOfBirth(continueBtn: continueBtn)
                    : activeStep == 2
                        ? TakePassword(continueBtn: continueBtn)
                        : activeStep == 3
                            ? TakeProfilePhotos(continueBtn: continueBtn)
                            : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
