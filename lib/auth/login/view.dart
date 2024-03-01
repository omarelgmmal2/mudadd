import 'package:flutter/material.dart';
import 'package:mudad/auth/forget_password/view.dart';
import 'package:mudad/core/design/custom_image.dart';
import '../../core/design/app_button.dart';
import '../../core/design/app_input_email.dart';
import '../../core/logic/helper_methods.dart';
import '../sign_up/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          children: [
            const Text(
              textAlign: TextAlign.center,
              "Sign In",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Welcome Back",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Please Sign in to access to your account",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Phone",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Form(
              key: formKey,
              child: AppInputPhone(
                labelText: "Phone",
                isPhone: true,
                controller: phoneController,
                paddingBottom: 30,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "رقم الهاتف مطلوب";
                  } else if (value.length < 11) {
                    return "يجب ان يكون رقم الهاتف 11 رقم";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                toGetNavigate(const ForgetPassword(),);
              },
              child: const Text(
                textAlign: TextAlign.end,
                "Forget Password!",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevateButton(
              text: "Login",
              onPress: () {
                if(formKey.currentState!.validate()){

                }
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const AppImage2(
              "assets/images/fingerprint.png",
              height: 41,
              width: 37,
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    toGetNavigate(const SignUpScreen(),);
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
