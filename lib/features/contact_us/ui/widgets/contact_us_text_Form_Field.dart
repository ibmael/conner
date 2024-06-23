import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/widgets/custom_widget/app_text_form_field.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUsTextField extends StatelessWidget {
  const ContactUsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ContactUsCubit>().formKey,
      
      child: Column(children: [
       AppTextFormField(
              
              hintText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Name';
                } else if (value.length < 3) {
                  return 'At Least 3 Characters';
                }
                return null;
              },
              controller: context.read<ContactUsCubit>().nameController,
            ),
            verticalSpace(15),
            AppTextFormField(
              
              hintText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Email';
                }
              },
              controller: context.read<ContactUsCubit>().emailController,
            ),
            verticalSpace(15),
            AppTextFormField(
              
              hintText: 'Title',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Title';
                }
              },
              controller: context.read<ContactUsCubit>().titleController,
            ),
            verticalSpace(15),
            AppTextFormField(
              
              hintText: 'Message',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Message';
                }
              },
              controller: context.read<ContactUsCubit>().messageController,
            ),
      
      ],),
    );
  }
}