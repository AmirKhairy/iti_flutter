import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iti_tasks/day10/components.dart';
import 'package:iti_tasks/day10/home_screen.dart';
import 'package:iti_tasks/day10/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                    'Create An Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff491B6D),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                CustomLabel(text: 'Name'),
                SizedBox(height: 10),
                CustomTextFormField(
                  emailController: _nameController,
                  hintText: 'Enter your name',
                  keyboardType: TextInputType.name,
                  isPassword: false,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    if (value != "Amir") {
                      return 'Wrong name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),

                CustomLabel(text: 'Email Address'),
                SizedBox(height: 10),

                CustomTextFormField(
                  emailController: _emailController,
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
                SizedBox(height: 15),

                CustomLabel(text: 'Password'),
                SizedBox(height: 10),

                CustomTextFormField(
                  emailController: _passwordController,
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

                SizedBox(height: 15),
                CustomLabel(text: 'Confirm Password'),
                SizedBox(height: 10),
                CustomTextFormField(
                  emailController: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: !isConfirmPasswordVisible,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != "111111") {
                      return 'Wrong password';
                    }
                    return null;
                  },
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    icon: isConfirmPasswordVisible
                        ? Icon(Icons.visibility, color: Color(0xff491B6D))
                        : Icon(Icons.visibility_off, color: Color(0xff491B6D)),
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false,
                      );
                    }
                  },
                  formKey: _formKey,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account already?',
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
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
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
