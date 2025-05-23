import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/login_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _newPasswordTEController = TextEditingController();
  final TextEditingController _confirmNewPasswordTEController = TextEditingController();

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
                      'Set Password',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      "Now you can change your new password at password will be 6 digit",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: _newPasswordTEController,
                      decoration: InputDecoration(
                        hintText: 'New Password',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: _confirmNewPasswordTEController,
                      decoration: InputDecoration(
                        hintText: 'Confirm New Password',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: _onTapSubmitButton,
                        child: const Text('Confirm')),
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
                                    ..onTap = _onTapSignInButton,
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
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  void _onTapSignInButton() {
    Navigator.push((context),
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  void dispose() {
    _newPasswordTEController.dispose();
    _confirmNewPasswordTEController.dispose();
    super.dispose();
  }
}
