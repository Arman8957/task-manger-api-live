import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/utils/assets_path.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen()  async {
     Future.delayed(const Duration(seconds: 2));
    // final bool isLoggedIn = await AuthController.checkIfUserLoggedIn();
    Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: (context) => const LoginScreen(),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Center(
            child: SvgPicture.asset(
              AssetsPath.logSvg,
              width: 120,
            ),
          ),
      ),
    );
  }
}
