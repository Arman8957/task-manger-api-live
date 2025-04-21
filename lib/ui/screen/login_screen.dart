import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/utils/assets_path.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import '';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
             Text(
              'Get Started ',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(decoration: const InputDecoration(
                hintText: 'Password',

            ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(

                onPressed: () {},
                child: const Icon(Icons.arrow_circle_right)),
            const SizedBox(height: 24),
            TextButton(onPressed: () {}, child: Text("Forgot Password")),
            RichText(text: const TextSpan(
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
              children: [
                TextSpan(
                  text: "Dont Have account?"
                ),
                TextSpan(
                  text: "Sign in ", style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                )
                )
              ]

            ))
          ],
                ),
        )),
    );
  }
}
