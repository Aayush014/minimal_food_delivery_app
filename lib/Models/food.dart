class Food {
  final String name;
  final String discription;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.discription,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  Burgers,
  Salads,
  Breads,
  Drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
