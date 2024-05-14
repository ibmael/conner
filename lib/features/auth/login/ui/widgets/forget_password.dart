import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class LoginForgetPassword extends StatelessWidget {
  const LoginForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          context.pushReplacementNamed(Routes.forgetPasswordScreen);
        },
        child: Text('    Forgot Password ?',
            style: AppStyle.font12buttonColorSemiBold),
      ),
    );
  }
}
