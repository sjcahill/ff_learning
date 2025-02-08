class Recipe {
  final String uri;
  final String label;

  Recipe({required this.uri, required this.label});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(uri: json['uri'] as String, label: json['label'] as String);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'uri': uri, 'label': label};
  }
}

void main() {
  Map<String, dynamic> json = {'uri': 'http://example.com', 'label': 'Pasta'};

  // Create a Recipe instance from JSON
  Recipe recipe = Recipe.fromJson(json);

  print(recipe.uri); // Output: http://example.com
  print(recipe.label); // Output: Pasta

  print(recipe.toJson().toString().runtimeType);
}
