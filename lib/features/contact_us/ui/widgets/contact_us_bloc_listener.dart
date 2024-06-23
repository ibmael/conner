// contactUsBlocListener
// contactUsBlocListener


import 'package:conner/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/utilities/show_failure_dialog.dart';
import 'package:conner/core/utilities/show_loading_dialog.dart';
import 'package:conner/core/utilities/show_success_dialog.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_cubit.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_state.dart';

class ContactUsBlocListener extends StatelessWidget {
  const ContactUsBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactUsCubit, ContactUsState>(
      listenWhen: (previous, current) =>
          current is ContactUsLoading ||
          current is ContactUsLoaded ||
          current is ContactUsError,
      listener: (context, state) => state.whenOrNull(
        contactUsLoading: () => showLoadingDialog(context),
        contactUsSuccess: (contactUsResponse) {
          context.pop();
          return showSuccessDialog(
              context: context,
              title: 'Success',
              message: 'Message sent successfully', routeName: Routes.scanScreen);
        },
        contactUsError: (error) {
          context.pop();
          return showFailureDialog(context, error);
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
