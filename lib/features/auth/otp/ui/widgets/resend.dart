import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theme/styles.dart';
import '../../../forget_password/logic/forget_password_cubit.dart';

class Resend extends StatelessWidget {
  const Resend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'If didn’t receive a code! ',
          style: AppStyle.font12whiteRegular,
        ),
        GestureDetector(
          onTap: () {
            // validateToSendEmail(context);
            context.pushReplacementNamed(Routes.updatePasswordScreen);
          },
          child: Text(
            ' Resend',
            style: AppStyle.font12buttonColorSemiBold,
          ),
        ),
      ],
    );
  }

  void validateToSendEmail(BuildContext context) {
    if (context.read<ForgetCubit>().formKey.currentState!.validate()) {
      context.read<ForgetCubit>().emitLoginState();
    }
  }
}
