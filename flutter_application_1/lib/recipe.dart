class Recipe {
  // properties/fields of the classkj;w
  String label;
  String imageUrl;
  int? servings;
  List<String>? ingredients;

  // Constructor
  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe("Spaghetti and Meatballs", "assets/s&m.jpg"),
    Recipe("Tomato Soup", "assets/tomato_soup.jpg"),
    Recipe("Grilled Cheese", "assets/grilled_cheese.jpg"),
    Recipe("Chocolate Chip Cookies", "assets/cc_cookies.jpg"),
    Recipe("Taco Sala", "assets/taco_salad.jpg"),
    Recipe("Hawaiian Pizza", "assets/hw_pizza.jpg"),
  ];
}

// TODO: Add Ingredient class here
