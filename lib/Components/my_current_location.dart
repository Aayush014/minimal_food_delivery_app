import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25,left: 25,top: 25,bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          Row(
            children: [
              Text("1830 Patel Bunglows",style: TextStyle(color:Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),),
              Icon(Icons.keyboard_arrow_down)
            ],
          )
        ],
      ),
    );
  }
}
