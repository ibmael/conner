import 'package:conner/features/contact_us/data/model/contact_us_request.dart';
import 'package:conner/features/contact_us/data/repo/contact_us_repo.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  final ContactUsRepo _contactUsRepo;
  ContactUsCubit(this._contactUsRepo) : super(const ContactUsState.initial());
  final formKey = GlobalKey<FormState>();
  
 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  void contactUs() async {
    emit(const ContactUsState.contactUsLoading());
    final response = await _contactUsRepo.contactUs(ContactUsRequest(
      name: nameController.text,
      email: emailController.text,
      title: titleController.text,
      message: messageController.text,
      
    ));

    response.when(
      success: (contactUsResponse) {
        emit(ContactUsState.contactUsSuccess(contactUsResponse));
      },
      failure: (error) {
        emit(ContactUsState.contactUsError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}