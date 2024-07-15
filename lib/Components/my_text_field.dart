import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController txtController;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.txtController,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: txtController,
        obscureText: obscureText,

        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Theme.of(context).colorScheme.tertiary)),
        ),
      ),
    );
  }
}
