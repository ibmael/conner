import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../../routing/routes.dart';
import '../../theme/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: AppStyle.font12whiteRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            ' Login',
            style: AppStyle.font12buttonColorSemiBold,
          ),
        ),
      ],
    );
  }
}
