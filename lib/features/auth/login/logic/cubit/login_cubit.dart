import 'package:conner/core/networking/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  FocusNode emailOrPhone = FocusNode();
  FocusNode password = FocusNode();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      
      LoginRequestBody(
          email: emailController.text,
           password: passwordController.text),
    );
    response.when(
      success: (loginResponse) async {
         await CacheHelper.insertToCache(
            key: 'token', value: loginResponse.data?.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(
            error: error.apiErrorModel.message ?? 'please try again later'));
      },
    );
  }

  // @override
  // Future<void> close() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   return super.close();
  // }
}
