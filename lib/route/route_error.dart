import 'package:bloc_flutter/ui/common_widgets/button/my_text_button.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/src/misc/errors.dart';

class RouteError extends StatelessWidget {
  const RouteError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://img.freepik.com/free-vector/404-error-with-portals-concept-illustration_114360-7970.jpg?uid=R132223768&ga=GA1.1.404847244.1697182292&semt=ais_hybrid&w=740'),
            const SizedBox(
              height: AppSize.spaceBtwSection,
            ),
            MTextButton(
              text: 'Login',
              onTap: () => context.go('/login'),
            ),
          ],
        ),
      ),
    );
  }
}
