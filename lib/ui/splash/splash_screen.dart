import 'package:animate_do/animate_do.dart';
import 'package:bloc_flutter/bloc/auth/auth_bloc.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../common_widgets/text/my_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      body: SizedBox(
        width: AppSize.width(context),
        height: AppSize.height(context),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              context.go('/navigation-screen'); // or Navigator.pushReplacement
            } else if (state is Unauthenticated) {
              context.go('/login');
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pulse(
                infinite: true,
                duration: const Duration(milliseconds: 2000),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/logo/logo.png'),
                  backgroundColor: AppColors.darkPink,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MTextWidget(
        text: 'Powered by MS, version: 1.0.1',
        textAlign: TextAlign.center,
      ),
    );
  }
}
