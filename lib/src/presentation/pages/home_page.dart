import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_task2/src/domain/dto/product_dto.dart';
import 'package:flutter_bloc_task2/src/presentation/widgets/product_list_widget.dart';

// Here should be main page with different horizontall product lists,
// such as "phones" and list of phones, "laptops" and list of laptops, etc.
// Providing an example with ProductListWidget
@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProductListWidget(
            title: 'Продукты',
            products: [
              ProductDTO(
                name: 'Asdasdasdas',
                description: 'asdasdasd description',
              ),
              ProductDTO(
                name: 'Asdasdasdas',
                description: 'asdasdasd description',
              ),
              ProductDTO(
                name: 'Asdasdasdas',
                description: 'asdasdasd description',
              ),
              ProductDTO(
                name: 'Asdasdasdas',
                description: 'asdasdasd description',
              ),
              ProductDTO(
                name: 'Asdasdasdas',
                description: 'asdasdasd description',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
