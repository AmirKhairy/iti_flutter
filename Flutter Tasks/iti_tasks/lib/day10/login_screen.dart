import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iti_tasks/day10/components.dart';
import 'package:iti_tasks/day10/home_screen.dart';
import 'package:iti_tasks/day10/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: LimitedBox(
                    maxHeight: 101,
                    maxWidth: 117,
                    child: SvgPicture.asset(
                      'assets/images/appLogo.svg',
                      height: 101,
                      width: 117,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff491B6D),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Login to continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff491B6D),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                CustomLabel(text: 'Email Address'),
                SizedBox(height: 10),
                CustomTextFormField(
                  emailController: emailController,
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  isPassword: false,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (value != "amirkhairy903@gmail.com") {
                      return 'Wrong email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomLabel(text: 'Password'),
                SizedBox(height: 10),
                CustomTextFormField(
                  emailController: passwordController,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: !isPasswordVisible,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value != "111111") {
                      return 'Wrong password';
                    }
                    return null;
                  },
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility, color: Color(0xff491B6D))
                        : Icon(Icons.visibility_off, color: Color(0xff491B6D)),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff491B6D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                CustomButton(
                  formKey: _formKey,
                  text: 'LOG IN',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false,
                      );
                    }
                  },
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up now',
                        style: TextStyle(
                          color: Color(0xff491B6D),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
