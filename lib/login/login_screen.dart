import 'package:flutter/material.dart';
import 'package:frontend_ndfy/services/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final screenSize = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 35, 35, 35),
        child: Center(
          child: Container(
            width: screenSize > 600 ? 600 : screenSize,
            color: const Color.fromARGB(255, 35, 35, 35),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 40),
                const Text('VISIONARY-PIXELS', textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 50),),
                const SizedBox(height: 20),
                const FlutterLogo(
                  size: 150,
                ),
                Flexible(
                  child: LoginButton(
                    icon: Icons.gamepad,
                    text: 'Sign in with Google',
                    loginMethod: authService.googleLogin,
                    color: const Color.fromARGB(255, 79, 2, 211),
                  ),
                ),
                LoginButton(text: 'Sign in with Apple', icon: Icons.apple, color: Colors.black, loginMethod: () {}),
                LoginButton(text: 'Sign in with E-Mail', icon: Icons.email, color: Colors.red, loginMethod: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
        ),
        onPressed: () => loginMethod(),
        label: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
