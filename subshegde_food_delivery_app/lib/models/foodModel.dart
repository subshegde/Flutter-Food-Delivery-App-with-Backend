class Food{
  final String name;
  final String description;
  final String image;
  final String price;
  final FoodCategory category;
  final List<Addon> addons;

  Food({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.addons,
    });
}

// food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks
}

// food addons
class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}