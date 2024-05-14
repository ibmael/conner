import 'package:conner/features/auth/update_password/ui/widgets/update_password_top_bk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:conner/core/theme/app_colors.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/theme/styles.dart';

class SuccessfulyUpdatePasswordScreen extends StatelessWidget {
  const SuccessfulyUpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding:  EdgeInsets.only(top: 50.h),
          child: Column(children: [
            const UpdatePasswordTopBk(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 30.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color(0xffffede1),
                    child: Align(
                      // alignment: Alignment.center,
                      child: SvgPicture.asset(
                          "assets/images/svg/suc_update_pass.svg"),
                    ),
                  ),
                  verticalSpace(25),
                  Text('New password has been set',
                      style: AppStyle.font18buttonColorbold),
                  verticalSpace(15),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Your password has been updated',
                        style: AppStyle.font16WhiteMedium),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                        Text('Successfully', style: AppStyle.font16WhiteMedium),
                  ),
                  verticalSpace(30),
                  AppTextButton(
                    backgroundColor: AppColor.buttonColor,
                    buttonText: 'Back to Login',
                    textStyle: AppStyle.font16WhiteSemiBold,
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                  ),
                  verticalSpace(10),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
