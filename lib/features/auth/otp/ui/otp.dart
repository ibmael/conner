import 'package:conner/core/theme/app_colors.dart';
import 'package:conner/core/widgets/custom_widget/app_text_button.dart';
import 'package:conner/features/auth/otp/ui/widgets/reset_password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/styles.dart';
import '../logic/check_code_cubit.dart';
import 'widgets/otp_bloc_listener.dart';
import 'widgets/top_bk_otp_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: Column(children: [
            const TopBackgroundOTPScreen(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('OTP Verification',
                        style: AppStyle.font18buttonColorbold),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                        'We will send you one-time password to you mobile number',
                        style: AppStyle.font16WhiteMedium),
                  ),
                  verticalSpace(30),
                  // const OtpTextField1(),
                  const ResetPasswordTextField(),
                  AppTextButton(
                          buttonText: 'Verify',
                          textStyle: AppStyle.font16WhiteSemiBold,
                          backgroundColor: AppColor.buttonColor,
                          onPressed: () {
                            validateToResetPassword(context);
                          },
                        ),

                  const OtpBlocListener(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void validateToResetPassword(BuildContext context) {
    if (context.read<CheckCodeCubit>().formKey.currentState!.validate()) {
      context.read<CheckCodeCubit>().emitCheckCodeState();
    }
  }
}
