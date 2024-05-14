import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:conner/core/theme/app_colors.dart';
import 'package:conner/features/auth/otp/logic/check_code_cubit.dart';

class OtpTextField1 extends StatelessWidget {
  const OtpTextField1({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CheckCodeCubit>().formKey,
      child: OtpTextField(
        numberOfFields: 6,
        borderColor: AppColor.white,
        borderRadius: BorderRadius.circular(12),
        focusedBorderColor: AppColor.white,
        showFieldAsBox: true,
        cursorColor: AppColor.white,
        onSubmit: (String verificationCode) {
          context.read<CheckCodeCubit>().codee.text = verificationCode;
          verificationCode;
          validateThenSendOtp(context);
          context.pushNamed(Routes.updatePasswordScreen,
              arguments: verificationCode);
        },
      ),
    );
  }

  void validateThenSendOtp(BuildContext context) {
    if (context.read<CheckCodeCubit>().formKey.currentState!.validate()) {
      context.read<CheckCodeCubit>().emitCheckCodeState();
    }
  }
}
