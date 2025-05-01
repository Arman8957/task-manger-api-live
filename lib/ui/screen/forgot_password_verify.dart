import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/login_screen.dart';
import 'package:task_manager/ui/screen/pin_verification_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotPasswordVerify extends StatefulWidget {
  const ForgotPasswordVerify({super.key});

  @override
  State<ForgotPasswordVerify> createState() => _ForgotPasswordVerifyState();
}

class _ForgotPasswordVerifyState extends State<ForgotPasswordVerify> {
  final TextEditingController _emailTEController = TextEditingController();

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
                  'Apply Forgot Password',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 4,),
                Text(
                  "Already, You got your pin please submit your verification pin ",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Apply your Email',
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: _onTapSubmitButton,
                    child: const Icon(Icons.arrow_circle_right)),
                const SizedBox(height: 24),
                Center(
                  child: Column(children: [
                    // TextButton(
                    //     onPressed: _onTapForgotPasswordButton,
                    //     child: const Text("Forgot Password")),
                    RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                          children: [
                            const TextSpan(text: "Go for sign in "),
                            TextSpan(
                              text: "Sign in",
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
      )),
    );
  }
  void _onTapSubmitButton() {
    Navigator.push((context),
        MaterialPageRoute(builder: (context) => const PinVerificationScreen()));
  }

  void _onTapSignUpButton() {
    Navigator.push((context),
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
