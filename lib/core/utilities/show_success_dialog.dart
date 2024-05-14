import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/styles.dart';

Future showSuccessDialog(
    {required BuildContext context,
    required String title,
    required String routeName,
    required String message,
    String textOfButton = "Continue"}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColor.white,
        title: Text(
          'Success!',
          textAlign: TextAlign.center,
          style: AppStyle.f16BlackW700Mulish,
        ),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: AppStyle.f16BlackW700Mulish,
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              textOfButton,
              style: AppStyle.font16mainColorBold,
            ),
            onPressed: () {
              context.pushReplacementNamed(routeName);
            },
          ),
        ],
      );
    },
  );
}
