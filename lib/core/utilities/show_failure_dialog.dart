import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/styles.dart';

Future<dynamic> showFailureDialog(BuildContext context, String error,
    [dynamic route]) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColor.white,
      icon: const Icon(
        Icons.error,
        color: AppColor.errorColor,
        size: 50,
      ),
      content: Text(
        error,
        textAlign: TextAlign.center,
        style: AppStyle.f16BlackW700Mulish,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
            route;
          },
          child: Text(
            'Got it',
            style: AppStyle.font16mainColorBold,
          ),
        ),
      ],
    ),
  );
}
