import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Themes/Provider/theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("Settings"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              color: Theme.of(context).colorScheme.secondary,
              child: ListTile(

                title: Provider.of<ThemeProvider>(context).isDarkMode? Text("Change to Light Mode"):Text("Change to Dark Mode"),
                trailing: themeAnimationIcon(),
              ),
            )
          ],
        ),
      ),
    );
  }


}
TweenAnimationBuilder<double> themeAnimationIcon() {
  var animationKey = UniqueKey();
  return TweenAnimationBuilder(
    key: animationKey,
    tween: Tween<double>(begin: 10, end: 30),
    duration: const Duration(milliseconds: 400),
    builder: (context, sizeValue, child) => TweenAnimationBuilder(
      key: animationKey,
      tween: Tween<double>(begin: 1, end: 6),
      duration: const Duration(milliseconds: 400),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              animationKey = UniqueKey();
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme();
            },
            child: Icon(
              (Provider.of<ThemeProvider>(context).isDarkMode)
                  ? CupertinoIcons.sun_max_fill
                  : CupertinoIcons.moon,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: sizeValue,
            ),
          ),
        );
      },
    ),
  );
}