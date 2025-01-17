import "package:flutter/material.dart";
import "./components/theme_button.dart";
import "./components/color_button.dart";
import "./components/category_card.dart";
import "./models/food_category.dart";
import "constants.dart";

class Home extends StatefulWidget {
  const Home(
      {super.key,
      required this.changeTheme,
      required this.changeColor,
      required this.colorSelected});

  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final ColorSelection colorSelected;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  final pages = [
    Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: CategoryCard(category: categories[0]))),
    Container(color: Colors.green),
    Container(color: Colors.blue)
  ];

  List<NavigationDestination> appBarDestinations = const [
    NavigationDestination(
        icon: Icon(Icons.credit_card),
        label: "Category",
        selectedIcon: Icon(Icons.credit_card)),
    NavigationDestination(
        icon: Icon(Icons.credit_card),
        label: "Post",
        selectedIcon: Icon(Icons.credit_card)),
    NavigationDestination(
        icon: Icon(Icons.credit_card),
        label: "Restaurant",
        selectedIcon: Icon(Icons.credit_card)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          ThemeButton(changeThemeMode: widget.changeTheme),
          ColorButton(
            changeColor: widget.changeColor,
            colorSelected: widget.colorSelected,
          )
        ],
      ),
      body: IndexedStack(index: tab, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (index) {
          setState(() {
            tab = index;
          });
        },
        destinations: appBarDestinations,
      ),
    );
  }
}
