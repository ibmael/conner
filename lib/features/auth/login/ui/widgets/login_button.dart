import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../../core/theme/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Login',
      textStyle: AppStyle.font16WhiteSemiBold,
              backgroundColor: AppColor.buttonColor,
      onPressed: () {
        context.pushNamed(Routes.scanScreen);

        // context.pushReplacementNamed(Routes.homeScreen);
      },
    );
  }
}
