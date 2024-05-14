import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:conner/core/utilities/show_failure_dialog.dart';
import 'package:conner/core/utilities/show_loading_dialog.dart';
import 'package:conner/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:conner/features/auth/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: ((previous, current) =>
            current is Loading || current is Success || current is Error),
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showLoadingDialog(context),
            success: (loginResponse) {
              context.pop();
              context.pushReplacementNamed(Routes.scanScreen);
            },
            error: (error) {
              context.pop();
              return showFailureDialog(context, error);
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
