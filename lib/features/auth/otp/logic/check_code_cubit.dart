import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conner/features/auth/otp/data/models/check_code_request_body.dart';
import '../data/repo/ckeck_code_repo.dart';
import 'check_code_state.dart';

class CheckCodeCubit extends Cubit<CheckCodeState> {
  final CheckCodeRepo _checkCodeRepo;
  CheckCodeCubit(this._checkCodeRepo) : super(const CheckCodeState.initial());
  TextEditingController otp = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitCheckCodeState() async {
    emit(const CheckCodeState.checkCodeLoading());
    final response = await _checkCodeRepo.checkCode(CheckCodeRequestBody(
      otp: otp.text,
      email: email.text,
      password: password.text,
    

    ));
    response.when(
      success: (checkCodeResponse) {
        emit(CheckCodeState.checkCodeSuccess(checkCodeResponse));
      },
      failure: (error) {
        emit(CheckCodeState.checkCodeError(
            error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
