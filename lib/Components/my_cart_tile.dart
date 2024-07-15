import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_quantity_selector.dart';
import 'package:minimal_food_delivery_app/Models/cart_item.dart';
import 'package:minimal_food_delivery_app/Models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({required this.cartItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, value, child) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.secondary),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text("\$ ${cartItem.food.price}",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    ],
                  ),
                  const Spacer(),
                  MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onDecrement: () {
                      value.removeFromCart(cartItem);
                    },
                    onIncrement: () {
                      value.addToCart(
                        cartItem.food,
                        cartItem.selectedAddon,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: cartItem.selectedAddon.isEmpty ? 0 : 60,
                child: ListView(
                  padding: const EdgeInsets.only(left: 10,right: 10,),
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddon
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                Text("  (\$ ${addon.price})"),
                              ],
                            ),
                            shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.inversePrimary,
                                fontSize: 12),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
