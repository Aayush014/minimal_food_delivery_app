import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignInButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MySignInButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
