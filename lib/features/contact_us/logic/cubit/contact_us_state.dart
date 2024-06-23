
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_us_state.freezed.dart';

@freezed
class ContactUsState<T> with _$ContactUsState<T> {
  const factory ContactUsState.initial() = _ContactUsInitial;
  const factory ContactUsState.contactUsLoading() = ContactUsLoading;
  const factory ContactUsState.contactUsSuccess(T data) = ContactUsLoaded<T>;
  const factory ContactUsState.contactUsError({required String error}) = ContactUsError;
}
