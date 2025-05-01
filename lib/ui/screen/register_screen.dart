import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailTEControler = TextEditingController();
  final TextEditingController _fistNameTEControler = TextEditingController();
  final TextEditingController _lastNameTEControler = TextEditingController();
  final TextEditingController _pNumberTEControler = TextEditingController();
  final TextEditingController _passwordTEControler = TextEditingController();

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
                    'join with us',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    controller: _fistNameTEControler,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    controller: _lastNameTEControler,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    controller: _pNumberTEControler,
                    decoration: const InputDecoration(
                      hintText: 'Mobile Number',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailTEControler,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordTEControler,
                    decoration: InputDecoration(
                      hintText: 'Password',
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
                      //     child: Text("Forgot Password")),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                            children: [
                              const TextSpan(text: "Dont Have account?"),
                              TextSpan(
                                text: "Sign in",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignInpButton,
                              )
                            ]),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton() {

  }
  void _onTapSignInpButton() {
    Navigator.pop(context);
  }
  @override
  void dispose() {
    _emailTEControler.dispose();
    _fistNameTEControler.dispose();
    _lastNameTEControler.dispose();
    _pNumberTEControler.dispose();
    _passwordTEControler.dispose();
    super.dispose();
  }
}
