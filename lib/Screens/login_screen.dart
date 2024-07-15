import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_sign_in_button.dart';
import 'package:minimal_food_delivery_app/Components/my_text_field.dart';
import 'package:minimal_food_delivery_app/Screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onPressed;

  const LoginScreen({super.key, required this.onPressed});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

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
            Hero(
              tag: "name",
              child: Text(
                "Sunset Dinner",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            MySignInButton(
              text: "Sign In",
              onTap: login,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
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
                    "Register Now",
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
