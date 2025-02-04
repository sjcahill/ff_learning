import 'package:flutter/material.dart';
import "../models/restaurant.dart";

class RestaurantLandscapeCard extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantLandscapeCard({super.key, required this.restaurant});

  @override
  State<RestaurantLandscapeCard> createState() =>
      _RestaurantLandscapeCardState();
}

class _RestaurantLandscapeCardState extends State<RestaurantLandscapeCard> {
  Widget build(BuildContext context) {
    bool _isFavorited = false;

    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Card(
        child: Stack(
      fit: StackFit.expand,
      children: [
// 2
        Image.asset(
          widget.restaurant.imageUrl,
          fit: BoxFit.cover,
        ),
// 3
        Positioned(
          top: 4.0,
          right: 4.0,
          child: IconButton(
// 4
            icon: Icon(
              _isFavorited
                  ? Icons.favorite //
                  : Icons.favorite_border,
            ),
            iconSize: 30.0,
            color: Colors.red[400],
            // 5
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
          ),
        ),
      ],
    ));
  }
}
