import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Auth/login_or_register.dart';
import 'package:minimal_food_delivery_app/Models/restaurant.dart';
import 'package:minimal_food_delivery_app/Themes/Provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
        themeMode: ThemeMode.system,
        home: const LoginOrRegister(),
      ),
    );
  }
}
