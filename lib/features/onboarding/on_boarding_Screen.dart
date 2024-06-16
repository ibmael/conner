import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:conner/core/theme/app_colors.dart';
import 'package:conner/core/widgets/custom_widget/app_text_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextButton(
                buttonWidth: 200,
                buttonText: 'login',
                backgroundColor: AppColor.buttonColor,
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                }),
            verticalSpace(20),
            AppTextButton(
                buttonWidth: 200,
                buttonText: 'SignUp',
                backgroundColor: AppColor.buttonColor,
                onPressed: () {
                  context.pushNamed(Routes.signUpScreen);
                }),
          ],
        ),
      ),
    );
  }
}
