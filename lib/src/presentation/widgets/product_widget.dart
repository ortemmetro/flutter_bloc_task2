import 'package:flutter/material.dart';

// Note: Widget of product.
// Used to show info about product on main page and search page.
// You can change styles of it if you want to.
// Add an image of product using CachedNetworkImage widget
class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.name,
    required this.description,
  });

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Make navigation to product page using auto_route
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade400,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
