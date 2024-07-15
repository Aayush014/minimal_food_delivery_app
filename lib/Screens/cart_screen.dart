import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_cart_tile.dart';
import 'package:minimal_food_delivery_app/Models/restaurant.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, value, child) {
        final userCart = value.cart;

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("C A R T"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              CupertinoButton(
                child: const Icon(CupertinoIcons.delete),
                onPressed: () {
                  value.clearCart();
                },
              )
            ],
          ),
          body: Column(
            children: [
              userCart.isEmpty
                  ?  Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Assets/Img/emptycart.gif",height: 300,),
                            const Text("Cart is Empty...",style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItem = userCart[index];

                        return MyCartTile(cartItem: cartItem);
                      },
                    ))
            ],
          ),
        );
      },
    );
  }
}
