import 'package:flutter/material.dart';
import 'package:conner/core/helper/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class LoginCreateAccount extends StatelessWidget {
  const LoginCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Doesn’t have account on dicover? ',
          style: AppStyle.font12whiteRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.signUpScreen);
          },
          child: Text(
            ' Create Account',
            style: AppStyle.font12buttonColorSemiBold,
          ),
        ),
      ],
    );
  }
}
