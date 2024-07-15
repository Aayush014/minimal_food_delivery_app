import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Screens/cart_screen.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      expandedHeight: 280,
      collapsedHeight: 120,
      floating: true,
      pinned: true,
      actions: [
        CupertinoButton(
            padding: EdgeInsets.zero,
            // color: Colors.transparent,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartScreen(),));
            },
            child: const Icon(
              Icons.shopping_cart,
              size: 30,
            ))
      ],
      title: const Hero(tag: "name",
      child: Text("Sunset Dinner")),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
