import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_widget/already_have_an_account.dart';
import '../logic/forget_password_cubit.dart';
import 'widgets/forget_bloc_listener.dart';
import 'widgets/forget_password_text_form_field.dart';
import 'widgets/forget_password_top_bk.dart';
import 'widgets/text_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding:  EdgeInsets.only(top: 70.h),
          child: Column(
            children: [
            const ForgetPasswordTopBackground(),
            Padding(
              padding: EdgeInsets.only(
                  top: 20.h, bottom: 20.h, left: 20.w, right: 30.w),
              child: Column(
                children: [
                  const TextForgetPassword(),
                  verticalSpace(50),
                  const ForgetPasswordTextFormFeild(),
                  AppTextButton(
                    backgroundColor: AppColor.buttonColor,
                    buttonText: 'Send',
                    textStyle: AppStyle.font16WhiteSemiBold,
                    onPressed: () {
                      context.pushNamed(Routes.otpScreen); 
                      validateToSendEmail(context);
                    },
                  ),
                  verticalSpace(20),
                  const AlreadyHaveAnAccount(),
                  const ForgetBlocListener(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void validateToSendEmail(BuildContext context) {
    if (context.read<ForgetCubit>().formKey.currentState!.validate()) {
      context.read<ForgetCubit>().emitLoginState();
    }
  }
}
