import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

// Note: Here should be product page, info about it, description, all photos etc.
// Add images of product using CachedNetworkImage widgets
// Add a carousel of images using CarouselSlider
@RoutePage() // Annotation for AutoRoute
class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.name,
    required this.description,
  });

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
