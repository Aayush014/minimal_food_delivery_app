import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_sign_in_button.dart';
import 'package:minimal_food_delivery_app/Models/restaurant.dart';
import 'package:provider/provider.dart';

import '../Models/food.dart';

class FoodScreen extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddon = {};

  FoodScreen({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.availableAddons) {
      selectedAddon[addon] = false;
    }
  }

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  void addToCart(Food food, Map<Addon, bool> selectedAddon) {
    Navigator.of(context).pop();
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddon[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: widget.food.imagePath,
                  child: Image.asset(widget.food.imagePath),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "\$ ${widget.food.price}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        widget.food.discription,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                "\$ ${addon.price}",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                              value: widget.selectedAddon[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddon[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MySignInButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddon),
                    text: "Add to Cart"),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.8,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle),
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.of(context).pop(),
                    child: Icon(
                      CupertinoIcons.back,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
