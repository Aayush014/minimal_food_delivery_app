import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/my_sign_in_button.dart';
import '../Components/my_text_field.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onPressed;

  const RegisterScreen({super.key, required this.onPressed});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "Assets/Img/truck.gif",
              height: 150,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            MyTextField(
                txtController: emailController,
                hintText: "Email",
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                txtController: passwordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                txtController: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            MySignInButton(
              text: "Sign Up",
              onTap: () => Navigator.of(context).pop(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: widget.onPressed,
                  child: Text(
                    "LogIn here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
