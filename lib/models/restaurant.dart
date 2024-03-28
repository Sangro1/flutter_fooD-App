import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_learn/models/cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  //List of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Clssic Cheeseburger",
      description:
          "A juicy patato with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this burger a savory delight.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenous", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Bluemoon Burger",
      description:
          "This burger is a blue cheese lover's dream. It features a succulent ground patato patty,",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sauteed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this burger a savory delight.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenous", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Himmus Spread", price: 2.99),
      ],
    ),
    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/caesar.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Asian Sesame",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/asian_sesame.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Greck Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/greck.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/quinoa.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Southwest Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/southwest.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //sides
    Food(
      name: "Gralic Sides",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/sides/garlic_side.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Loaded fries Sides",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/sides/loaded_fries.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Maxiacan Pizza Sides",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/sides/mac_slide.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Onion Rings Sides",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Seet Potato Sides",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/sides/seet_potato_side.jpg",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //desserts
    Food(
      name: "Baklava",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/desserts/Baklava.jpg",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "gulab Jamun",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/desserts/gulab_jamun.jpg",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "ICE cream",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/desserts/ice cream.jpg",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Pavlova",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/desserts/Pavlova.jpg",
      price: 75.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "Crisp romaine lettuce, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/desserts/Tiramisu.jpg",
      price: 99.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //drinks
    Food(
      name: "C H A I",
      description: "Milk chai.",
      imagePath: "lib/images/drinks/chai.jpg",
      price: 10,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sugar", price: 2.99),
      ],
    ),
    Food(
      name: "Coffee",
      description: "Coffee Beans.",
      imagePath: "lib/images/drinks/coffee.jpg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sugar", price: 2.99),
      ],
    ),
    Food(
      name: "Lassi",
      description: "Dahi testy lassi",
      imagePath: "lib/images/drinks/lassi.jpg",
      price: 50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sugar", price: 2.99),
      ],
    ),
    Food(
      name: "Mango Drink",
      description: "Testy Mango Drink.",
      imagePath: "lib/images/drinks/mango_drink.jpg",
      price: 50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mango Slice", price: 10.99),
        Addon(name: "Sugar", price: 2.99),
      ],
    ),
    Food(
      name: "Tea",
      description: "No added milk.",
      imagePath: "lib/images/drinks/tea.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Tea", price: 6.99),
      ],
    ),
    Food(
      name: "Wine",
      description: "wine.",
      imagePath: "lib/images/drinks/wine.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice", price: 0.99),
      ],
    ),
  ];

  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
  O P E R A T I O N S
  */

  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, icrease it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
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

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
  H E L P E R S
  */

  // generate a recipt

  //format double value into money

  //format list of addons into a string summary
}
