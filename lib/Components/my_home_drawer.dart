import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_home_drawer_tile.dart';
import 'package:minimal_food_delivery_app/Screens/settings_screen.dart';

class MyHomeDrawer extends StatelessWidget {
  const MyHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyHomeDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.of(context).pop(),
          ),
          MyHomeDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ));
            },
          ),
          Spacer(),
          MyHomeDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {},
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
