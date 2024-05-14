import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';
import '../../theme/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String?)? onFieldSubmitted;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final Function(String?)? onSaved;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    required this.validator,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.onTap,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: textInputType,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: AppColor.mainColor,
      controller: controller,
      onTap: onTap,
      onSaved: onSaved,
      decoration: InputDecoration(
        isDense: true,
        fillColor: AppColor.white,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        focusedBorder: focusedBorder ?? outlineInputBorder(AppColor.mainColor),
        enabledBorder: enabledBorder ?? outlineInputBorder(AppColor.lightGray),
        errorBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),
        hintStyle: hintStyle ?? AppStyle.font14GrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefix: prefixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? AppStyle.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }

  OutlineInputBorder outlineInputBorder([Color color = Colors.red]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(32),
    );
  }
}
