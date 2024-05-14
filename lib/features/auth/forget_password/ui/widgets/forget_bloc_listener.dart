import 'package:conner/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utilities/show_failure_dialog.dart';
import '../../../../../core/utilities/show_loading_dialog.dart';
import '../../logic/forget_password_cubit.dart';
import '../../logic/forget_password_state.dart';

class ForgetBlocListener extends StatelessWidget {
  const ForgetBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetCubit, ForgetState>(
        listenWhen: ((previous, current) =>
            current is ForgetLoading ||
            current is ForgetSuccess ||
            current is ForgetError),
        listener: (context, state) {
          state.whenOrNull(
            forgetLoading: () => showLoadingDialog(context),
            forgetSuccess: (loginResponse) {
              context.pop();
              context.pushReplacementNamed(Routes.otpScreen);
            },
            forgetError: (error) {
              context.pop();
              showFailureDialog(context, error);
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
