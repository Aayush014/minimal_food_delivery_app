import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({
    required this.food,
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      "\$ " + food.price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    SizedBox(height: 10,),
                    Text(food.discription,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                  ],
                )),
                SizedBox(width: 25,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Hero(
                      tag: food.imagePath,
                      child: Image.asset(
                        food.imagePath,
                        fit: BoxFit.cover,
                        // height: 120,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(indent: 25,endIndent: 25,color: Theme.of(context).colorScheme.tertiary)
      ],
    );
  }
}
