import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Screens/login_screen.dart';
import 'package:minimal_food_delivery_app/Screens/register_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLoginScreen= true;

  void toggleScreen(){
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginScreen){
      return LoginScreen(onPressed: toggleScreen);
    } else {
      return RegisterScreen(onPressed: toggleScreen);
    }
  }
}
