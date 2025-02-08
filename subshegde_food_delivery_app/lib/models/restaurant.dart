import 'package:flutter/material.dart';
import 'package:subshegde_food_delivery_app/models/foodModel.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    // Burgers
    Food(
      name: 'Big Cheddar Crunch',
      description: 'A juicy beef patty with cheddar cheese, crispy lettuce, and special sauce.',
      image: 'assets/burgers/TheBigCheddarCrunch.jpg',
      price: '₹250',
      category: FoodCategory.burgers,
      addons: [
        Addon(name: 'Extra Cheese', price: 30),
        Addon(name: 'Bacon', price: 40),
        Addon(name: 'Mushrooms', price: 25),
      ],
    ),
    Food(
      name: 'Smoky BBQ Beast',
      description: 'Grilled chicken with smoky BBQ sauce, pickles, and onions.',
      image: 'assets/burgers/SmokyBBQBeast.jpg',
      price: '₹280',
      category: FoodCategory.burgers,
      addons: [
        Addon(name: 'Avocado', price: 35),
        Addon(name: 'Onion Rings', price: 20),
        Addon(name: 'Spicy Sauce', price: 15),
      ],
    ),
    Food(
      name: 'Melted Mushroom Deluxe',
      description: 'A vegetarian delight with grilled mushrooms, melted cheese, and fresh veggies.',
      image: 'assets/burgers/MeltedMushroomDeluxe.jpg',
      price: '₹240',
      category: FoodCategory.burgers,
      addons: [
        Addon(name: 'Olives', price: 25),
        Addon(name: 'Tomato', price: 20),
        Addon(name: 'Garlic Aioli', price: 15),
      ],
    ),
    Food(
      name: 'Spicy Jalapeño Inferno',
      description: 'Spicy beef patty with jalapeños, lettuce, and spicy mayo.',
      image: 'assets/burgers/spicy.jpg',
      price: '₹270',
      category: FoodCategory.burgers,
      addons: [
        Addon(name: 'Extra Spice', price: 10),
        Addon(name: 'Cheddar Cheese', price: 30),
        Addon(name: 'Lettuce', price: 10),
      ],
    ),
    Food(
      name: 'The Veggie Supreme',
      description: 'A wholesome veggie patty with fresh lettuce, tomato, and pickles.',
      image: 'assets/burgers/supreme.jpg',
      price: '₹220',
      category: FoodCategory.burgers,
      addons: [
        Addon(name: 'Grilled Paneer', price: 40),
        Addon(name: 'Corn', price: 20),
        Addon(name: 'Avocado', price: 35),
      ],
    ),
    
    // Salads
    Food(
      name: 'Kachumber Salad',
      description: 'A refreshing salad with cucumber, tomato, and onions tossed in lemon juice.',
      image: 'assets/salads/k.jpg',
      price: '₹120',
      category: FoodCategory.salads,
      addons: [
        Addon(name: 'Feta Cheese', price: 30),
        Addon(name: 'Olives', price: 20),
      ],
    ),
    Food(
      name: 'Fruit Chaat',
      description: 'A sweet and spicy mix of seasonal fruits with a tangy chaat masala twist.',
      image: 'assets/salads/f.jpg',
      price: '₹150',
      category: FoodCategory.salads,
      addons: [
        Addon(name: 'Pineapple', price: 25),
        Addon(name: 'Pomegranate', price: 20),
      ],
    ),
    Food(
      name: 'Pineapple Raita',
      description: 'Yogurt-based drink with pineapple and a hint of spices.',
      image: 'assets/salads/p.jpg',
      price: '₹110',
      category: FoodCategory.salads,
      addons: [
        Addon(name: 'Mint Leaves', price: 15),
        Addon(name: 'Cucumber', price: 10),
      ],
    ),
    Food(
      name: 'Sprout Salad',
      description: 'Healthy sprouted beans mixed with veggies and a tangy dressing.',
      image: 'assets/salads/s.jpg',
      price: '₹130',
      category: FoodCategory.salads,
      addons: [
        Addon(name: 'Avocado', price: 35),
        Addon(name: 'Lemon Dressing', price: 10),
      ],
    ),
    Food(
      name: 'Cabbage and Carrot Salad',
      description: 'A crunchy salad made with shredded cabbage, carrots, and mustard seeds.',
      image: 'assets/salads/ck.jpg',
      price: '₹100',
      category: FoodCategory.salads,
      addons: [
        Addon(name: 'Cashews', price: 25),
        Addon(name: 'Coriander', price: 10),
      ],
    ),
    
    // Sides
    Food(
      name: 'Aloo Gobi',
      description: 'A dry curry of potatoes and cauliflower with aromatic spices.',
      image: 'assets/sides/a.jpg',
      price: '₹180',
      category: FoodCategory.sides,
      addons: [
        Addon(name: 'Chapati', price: 20),
        Addon(name: 'Rice', price: 40),
      ],
    ),
    Food(
      name: 'Bhindi Masala',
      description: 'Stir-fried okra with onions, tomatoes, and a blend of spices.',
      image: 'assets/sides/bindi.jpg',
      price: '₹150',
      category: FoodCategory.sides,
      addons: [
        Addon(name: 'Paneer', price: 50),
        Addon(name: 'Roti', price: 20),
      ],
    ),
    Food(
      name: 'Chana Masala',
      description: 'A chickpea curry cooked with spices and served with fresh cilantro.',
      image: 'assets/sides/chana-masala.jpg',
      price: '₹160',
      category: FoodCategory.sides,
      addons: [
        Addon(name: 'Naan', price: 30),
        Addon(name: 'Pickle', price: 10),
      ],
    ),
    Food(
      name: 'Methi Thepla',
      description: 'A Gujarati flatbread with fenugreek leaves and spices.',
      image: 'assets/sides/methiThepla.png',
      price: '₹140',
      category: FoodCategory.sides,
      addons: [
        Addon(name: 'Yogurt', price: 20),
        Addon(name: 'Spicy Chutney', price: 15),
      ],
    ),
    Food(
      name: 'Raita',
      description: 'Very Very good raita for this price!',
      image: 'assets/sides/raita.jpg',
      price: '₹200',
      category: FoodCategory.sides,
      addons: [
        Addon(name: 'Cheese', price: 30),
        Addon(name: 'Onions', price: 15),
      ],
    ),
    
    // Desserts
    Food(
      name: 'Gulab Jamun',
      description: 'Soft fried dough balls soaked in sweet syrup, flavored with cardamom.',
      image: 'assets/desserts/jamoon.jpg',
      price: '₹120',
      category: FoodCategory.desserts,
      addons: [
        Addon(name: 'Ice Cream', price: 50),
        Addon(name: 'Chopped Nuts', price: 20),
      ],
    ),
    Food(
      name: 'Rasgulla',
      description: 'Spongy balls made from chhena (Indian cottage cheese) soaked in sugar syrup.',
      image: 'assets/desserts/rasgulla.jpg',
      price: '₹140',
      category: FoodCategory.desserts,
      addons: [
        Addon(name: 'Rose Syrup', price: 15),
        Addon(name: 'Pistachios', price: 20),
      ],
    ),
    Food(
      name: 'Gajar ka Halwa',
      description: 'A sweet dessert made from grated carrots, milk, sugar, and ghee.',
      image: 'assets/desserts/gajarhalwa.jpg',
      price: '₹150',
      category: FoodCategory.desserts,
      addons: [
        Addon(name: 'Cashews', price: 20),
        Addon(name: 'Raisins', price: 15),
      ],
    ),
    Food(
      name: 'Kheer',
      description: 'A creamy rice pudding made with milk, sugar, and cardamom.',
      image: 'assets/desserts/kheer.jpg',
      price: '₹130',
      category: FoodCategory.desserts,
      addons: [
        Addon(name: 'Almonds', price: 25),
        Addon(name: 'Saffron', price: 30),
      ],
    ),
    Food(
      name: 'Barfi',
      description: 'A sweet fudge-like dessert made from condensed milk and sugar.',
      image: 'assets/desserts/barfi.jpg',
      price: '₹160',
      category: FoodCategory.desserts,
      addons: [
        Addon(name: 'Pistachio', price: 25),
        Addon(name: 'Rose Water', price: 15),
      ],
    ),
    
    // Drinks
    Food(
      name: '7 UP',
      description: 'Risk hai tho Isk hai ! Dar ke aage kuch b nahi h!',
      image: 'assets/drinks/sevenup.jpg',
      price: '₹50',
      category: FoodCategory.drinks,
      addons: [
        Addon(name: 'Extra Ginger', price: 10),
        Addon(name: 'Milk Foam', price: 15),
      ],
    ),
    Food(
      name: 'Lassi',
      description: 'A yogurt-based drink, available in sweet or salty varieties.',
      image: 'assets/drinks/lassi.jpg',
      price: '₹60',
      category: FoodCategory.drinks,
      addons: [
        Addon(name: 'Mango', price: 20),
        Addon(name: 'Rose Water', price: 10),
      ],
    ),
    Food(
      name: 'Nimbu Pani',
      description: 'A refreshing lemonade with a hint of cumin and black salt.',
      image: 'assets/drinks/nimbu-pani.jpg',
      price: '₹40',
      category: FoodCategory.drinks,
      addons: [
        Addon(name: 'Mint Leaves', price: 10),
        Addon(name: 'Chili', price: 5),
      ],
    ),
    Food(
      name: 'Jaljeera',
      description: 'A tangy drink made from cumin, mint, and other spices.',
      image: 'assets/drinks/jaljeera.jpg',
      price: '₹50',
      category: FoodCategory.drinks,
      addons: [
        Addon(name: 'Lemon', price: 10),
        Addon(name: 'Black Salt', price: 5),
      ],
    ),
    Food(
      name: 'Thandai',
      description: 'A sweet and aromatic milk-based drink flavored with saffron, fennel seeds, and cardamom.',
      image: 'assets/drinks/thandai.jpg',
      price: '₹80',
      category: FoodCategory.drinks,
      addons: [
        Addon(name: 'Rose Petals', price: 15),
        Addon(name: 'Almonds', price: 20),
      ],
    ),
  ];

  List<Food> get menu => _menu;

  // add to card


  // remove from card

  // get total price of the cart

  //get total number of items in the cart

  // clear the cart

  // generate the receipt

  // formate bouble value into money

  // formate the list of addons into a String summary
}

