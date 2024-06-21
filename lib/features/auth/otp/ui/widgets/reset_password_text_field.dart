import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/theme/app_colors.dart';
import 'package:conner/core/widgets/custom_widget/app_text_form_field.dart';
import 'package:conner/features/auth/otp/logic/check_code_cubit.dart';
import 'package:conner/features/auth/otp/ui/widgets/otp_timer.dart';
import 'package:conner/features/auth/otp/ui/widgets/resend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ResetPasswordTextField extends StatelessWidget {
  const ResetPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
                    key: context.read<CheckCodeCubit>().formKey,
                    child: Column(
                      children: [
                        OtpTextField(
                          numberOfFields: 6,
                          borderColor: AppColor.white,
                          borderRadius: BorderRadius.circular(12),
                          focusedBorderColor: AppColor.white,
                          showFieldAsBox: true,
                          cursorColor: AppColor.white,
                          onSubmit: (String verificationCode) {
                            context.read<CheckCodeCubit>().otp.text =
                                verificationCode;
                          },
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          hintText: 'Email',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid Email';
                            }
                          },
                          controller: context.read<CheckCodeCubit>().email,
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          hintText: 'Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                          controller: context.read<CheckCodeCubit>().password,
                        ),
                        verticalSpace(25),
                        const Resend(),
                        const OtpTimer(),
                        verticalSpace(20),
                        
                      ],
                    ),
                  );
  }
}