import 'package:flutter/material.dart';
import 'package:flutter_bloc_task2/src/domain/dto/product_dto.dart';
import 'package:flutter_bloc_task2/src/presentation/widgets/product_widget.dart';

// Note: Horizontal list for products.
// You can change styles of the list if you want to.
class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.products,
    required this.title,
  });

  final List<ProductDTO> products;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: BoxConstraints.loose(
            const Size.fromHeight(80),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index == products.length - 1 ? 0 : 16,
                ),
                child: ProductWidget(
                  name: products[index].name,
                  description: products[index].description,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
