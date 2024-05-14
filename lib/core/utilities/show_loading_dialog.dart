import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

Future<dynamic> showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(
        color: AppColor.mainColor,
      ),
    ),
  );
}
