import 'package:flutter/material.dart';

class CustomTextFormField2 extends StatelessWidget {
  const CustomTextFormField2({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.isPassword,
    required this.validator,
    this.prefix,
    this.suffix,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final FormFieldValidator<String> validator;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 14,
        color: Color(0xff000000),
        fontWeight: FontWeight.w500,
      ),
      controller: controller,
      cursorColor: Color(0xff491B6D),
      cursorErrorColor: Color(0xff491B6D),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Color(0xffffffff),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Color(0xff491B6D), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Color(0xff491B6D), width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Color(0xff491B6D), width: 1),
        ),
        suffixIcon: suffix,
        prefix: prefix,
      ),
      keyboardType: keyboardType,
      obscureText: isPassword,
      validator: validator,
    );
  }
}
