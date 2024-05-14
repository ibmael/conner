import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/helper/spacing.dart';
import 'package:conner/features/auth/update_password/logic/reset_password_cubit.dart';
import 'package:conner/features/auth/update_password/ui/widgets/update_password_text_field.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import 'widgets/update_password_bloc_listener.dart';
import 'widgets/update_password_top_bk.dart';

// ignore: must_be_immutable
class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  // UpdatePasswordScreen(this.arg, {super.key});
  // String arg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: Column(children: [
            const UpdatePasswordTopBk(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 30.w),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Update Password',
                          style: AppStyle.font18buttonColorbold)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Please enter your new password.',
                        style: AppStyle.font16WhiteMedium),
                  ),
                  verticalSpace(50),
                  const UpdatePasswordTextField(),
                  verticalSpace(30),
                  AppTextButton(
                    backgroundColor: AppColor.buttonColor,
                    buttonText: 'Send',
                    textStyle: AppStyle.font16WhiteSemiBold,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.successfulyUpdatePasswordScreen);
                      // context.read<ResetPasswordCubit>().codeController.text =
                      //     arg;
                      // validateThenResetPassword(context);
                    },
                  ),
                  const UpdatePasswordBlocListener(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void validateThenResetPassword(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().emitResetPasswordStates();
    }
  }
}
