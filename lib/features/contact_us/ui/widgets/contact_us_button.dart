import 'package:conner/core/widgets/custom_widget/app_text_button.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Send',
      onPressed: () {
        validateToSend(context);
      },
    );
  }

  void validateToSend(BuildContext context) {
    if (context.read<ContactUsCubit>().formKey.currentState!.validate()) {
      context.read<ContactUsCubit>().contactUs();
    }
  }
}
