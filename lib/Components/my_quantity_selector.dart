import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: onDecrement),
          SizedBox(width: 20, child: Center(child: Text(quantity.toString()))),
          CupertinoButton(
            padding: EdgeInsets.zero,
              child: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: onIncrement),
        ],
      ),
    );
  }
}
