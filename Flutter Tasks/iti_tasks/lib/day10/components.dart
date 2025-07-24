import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.emailController,
    required this.hintText,
    required this.keyboardType,
    required this.isPassword,
    required this.validator,
    this.prefix,
    this.suffix,
  });

  final TextEditingController emailController;
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
      controller: emailController,
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.formKey,
    required this.text,
    required this.onPressed,
  });
  final GlobalKey<FormState> formKey;
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(0xff491B6D)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        minimumSize: WidgetStateProperty.all<Size>(Size(double.infinity, 50)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomLabel extends StatelessWidget {
  const CustomLabel({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff491B6D),
      ),
    );
  }
}
