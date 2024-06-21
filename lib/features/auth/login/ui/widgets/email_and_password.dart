import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPasswordText extends StatefulWidget {
  const EmailAndPasswordText({super.key});

  @override
  State<EmailAndPasswordText> createState() => _EmailAndPasswordTextState();
}

class _EmailAndPasswordTextState extends State<EmailAndPasswordText> {
  bool isOsecured = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,

        child: Column(
          children: [
            /// Email or Phone
            AppTextFormField(
              
              hintText: 'Email or Phone',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpace(18.h),

            /// Password
            AppTextFormField(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isOsecured = !isOsecured;
                    });
                  },
                  icon: Icon(
                      isOsecured ? Icons.visibility_off : Icons.visibility)),
              isObscureText: isOsecured,
              hintText: 'Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
              controller: context.read<LoginCubit>().passwordController,

              
                          ),
            verticalSpace(12.h),
          ],
        ));
  }
}
