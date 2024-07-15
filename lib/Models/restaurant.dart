import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      discription:
          "A toasted veg patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "Assets/Img/b1.png",
      price: 0.99,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra patty", price: 1.99),
        Addon(name: "Extra avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Hamburger",
      discription:
          "A roasted veg patty with cheddar, cabbage, tomato, and a hint of onion",
      imagePath: "Assets/Img/b2.png",
      price: 1.05,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra patty", price: 1.99),
        Addon(name: "Extra avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheese hamburger",
      discription:
          "A toasted veg patty with melted cheddar, lettuce and cabbage, tomato, and a hint of onion and pickle",
      imagePath: "Assets/Img/b3.png",
      price: 1.99,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra patty", price: 1.99),
        Addon(name: "Extra avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Burger",
      discription:
          "A toasted veg patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "Assets/Img/b4.png",
      price: 1.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra patty", price: 1.99),
        Addon(name: "Extra avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Cheeseburger",
      discription:
          "A toasted veg patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "Assets/Img/b5.png",
      price: 1.49,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra patty", price: 1.99),
        Addon(name: "Extra avocado", price: 2.99),
      ],
    ),

    // garlic bread

    Food(
      name: "Classic Garlic Bread",
      discription:
          "A toasted baguette with melted garlic butter, topped with parsley",
      imagePath: "Assets/Img/gb1.jpeg",
      price: 0.99,
      category: FoodCategory.Breads,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 0.50),
        Addon(name: "Cheese topping", price: 1.00),
        Addon(name: "Chili flakes", price: 0.30),
      ],
    ),
    Food(
      name: "Cheesy Garlic Bread",
      discription:
          "A toasted baguette with melted garlic butter and cheddar cheese, topped with parsley",
      imagePath: "Assets/Img/gb2.jpg",
      price: 1.05,
      category: FoodCategory.Breads,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 0.50),
        Addon(name: "Extra cheese", price: 1.00),
        Addon(name: "Chili flakes", price: 0.30),
      ],
    ),
    Food(
      name: "Spicy Garlic Bread",
      discription:
          "A toasted baguette with melted garlic butter, cheddar cheese, and chili flakes, topped with parsley",
      imagePath: "Assets/Img/gb3.jpeg",
      price: 1.99,
      category: FoodCategory.Breads,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 0.50),
        Addon(name: "Extra cheese", price: 1.00),
        Addon(name: "Extra chili flakes", price: 0.30),
      ],
    ),
    Food(
      name: "Herb Garlic Bread",
      discription:
          "A toasted baguette with melted garlic butter, mixed herbs, and topped with parsley",
      imagePath: "Assets/Img/gb4.jpeg",
      price: 1.00,
      category: FoodCategory.Breads,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 0.50),
        Addon(name: "Cheese topping", price: 1.00),
        Addon(name: "Chili flakes", price: 0.30),
      ],
    ),
    Food(
      name: "Classic Cheese Garlic Bread",
      discription:
          "A toasted baguette with melted garlic butter and cheddar cheese, topped with parsley",
      imagePath: "Assets/Img/gb5.jpeg",
      price: 1.49,
      category: FoodCategory.Breads,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 0.50),
        Addon(name: "Extra cheese", price: 1.00),
        Addon(name: "Chili flakes", price: 0.30),
      ],
    ),

    // salad

    Food(
      name: "Classic Mexican Salad",
      discription:
          "A fresh mix of lettuce, black beans, corn, tomatoes, and red onions topped with a tangy lime dressing",
      imagePath: "Assets/Img/s1.png",
      price: 2.99,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.50),
        Addon(name: "Grilled chicken", price: 2.00),
        Addon(name: "Cheese topping", price: 1.00),
      ],
    ),
    Food(
      name: "Spicy Mexican Salad",
      discription:
          "A fresh mix of lettuce, black beans, corn, tomatoes, red onions, and jalapeños topped with a spicy lime dressing",
      imagePath: "Assets/Img/s2.png",
      price: 3.49,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.50),
        Addon(name: "Grilled chicken", price: 2.00),
        Addon(name: "Cheese topping", price: 1.00),
      ],
    ),
    Food(
      name: "Mexican Quinoa Salad",
      discription:
          "A fresh mix of quinoa, lettuce, black beans, corn, tomatoes, and red onions topped with a cilantro lime dressing",
      imagePath: "Assets/Img/s3.png",
      price: 3.99,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.50),
        Addon(name: "Grilled chicken", price: 2.00),
        Addon(name: "Cheese topping", price: 1.00),
      ],
    ),
    Food(
      name: "Mexican Chopped Salad",
      discription:
          "A fresh mix of chopped lettuce, black beans, corn, tomatoes, red onions, and bell peppers topped with a creamy lime dressing",
      imagePath: "Assets/Img/s4.jpg",
      price: 3.29,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.50),
        Addon(name: "Grilled chicken", price: 2.00),
        Addon(name: "Cheese topping", price: 1.00),
      ],
    ),
    Food(
      name: "Avocado Mexican Salad",
      discription:
          "A fresh mix of lettuce, black beans, corn, tomatoes, red onions, and avocado slices topped with a lime dressing",
      imagePath: "Assets/Img/s5.jpg",
      price: 3.79,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.50),
        Addon(name: "Grilled chicken", price: 2.00),
        Addon(name: "Cheese topping", price: 1.00),
      ],
    ),

    //drinks

    Food(
      name: "Classic Mojito",
      discription:
          "A refreshing mix of lime, mint, and soda water served over ice",
      imagePath: "Assets/Img/d1.jpg",
      price: 2.50,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra mint", price: 0.50),
        Addon(name: "Extra lime", price: 0.50),
        Addon(name: "Sugar rim", price: 0.30),
      ],
    ),
    Food(
      name: "Strawberry Lemonade",
      discription: "A sweet blend of strawberries and lemonade served over ice",
      imagePath: "Assets/Img/d2.jpg",
      price: 2.99,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra strawberries", price: 0.75),
        Addon(name: "Extra lemon", price: 0.50),
        Addon(name: "Mint garnish", price: 0.30),
      ],
    ),
    Food(
      name: "Virgin Pina Colada",
      discription:
          "A tropical mix of pineapple juice and coconut milk served over ice",
      imagePath: "Assets/Img/d3.jpg",
      price: 3.49,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra pineapple", price: 0.75),
        Addon(name: "Extra coconut milk", price: 0.75),
        Addon(name: "Cherry garnish", price: 0.50),
      ],
    ),
    Food(
      name: "Blue Lagoon",
      discription:
          "A vibrant blend of blue curacao syrup, lemonade, and soda water served over ice",
      imagePath: "Assets/Img/d4.jpg",
      price: 3.29,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra blue curacao syrup", price: 0.50),
        Addon(name: "Extra lemon", price: 0.50),
        Addon(name: "Sugar rim", price: 0.30),
      ],
    ),
    Food(
      name: "Mango Mule",
      discription:
          "A tropical mix of mango juice, ginger beer, and lime served over ice",
      imagePath: "Assets/Img/d5.jpg",
      price: 3.79,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra mango", price: 0.75),
        Addon(name: "Extra ginger beer", price: 0.75),
        Addon(name: "Lime garnish", price: 0.50),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddon) {
    CartItem? cartItem = _cart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.food == food;
        bool isSmeAddon =
            ListEquality().equals(item.selectedAddon, selectedAddon);
        return isSameFood && isSmeAddon;
      },
    );
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddon: selectedAddon,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }

    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount(){
    int totalItemCount = 0;
    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }








}
