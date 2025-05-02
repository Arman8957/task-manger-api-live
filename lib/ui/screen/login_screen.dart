import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/forgot_password_verify.dart';
import 'package:task_manager/ui/screen/main_bottom_nav_screen.dart';
import 'package:task_manager/ui/screen/register_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEContrller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Get Started with',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _passwordTEContrller,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: _onTapSignInButton,
                    child: const Icon(Icons.arrow_circle_right)),
                const SizedBox(height: 24),
                Center(
                  child: Column(children: [
                    TextButton(
                        onPressed: _onTapForgotPasswordButton,
                        child: const Text("Forgot Password")),
                    RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                          children: [
                            const TextSpan(text: "Dont Have account?"),
                            TextSpan(
                              text: "Sign up",
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTapSignUpButton,
                            )
                          ]),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      )
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => const MainBottomNavScreen()),
        (pre) => false,
    );
  }
  void _onTapForgotPasswordButton() {
    Navigator.push((context),
        MaterialPageRoute(builder: (context) => const ForgotPasswordVerify()));
  }
  void _onTapSignUpButton() {
    Navigator.push((context),
        MaterialPageRoute(builder: (context) => const RegisterScreen()));
  }
  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEContrller.dispose();
    super.dispose();
  }
}


