import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState<T> {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.resetPasswordLoading() =
      ResetPasswordLoading;
  const factory ResetPasswordState.resetPasswordSuccess(T data) =
      ResetPasswordSuccess<T>;
  const factory ResetPasswordState.resetPasswordError({required String error}) =
      ResetPasswordError;
}
