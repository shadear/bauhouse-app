import 'package:bauhouse/src/config/config.dart';
import 'package:bauhouse/src/data/data.dart';
import 'package:bauhouse/src/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final products = Product.products;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Your Products'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_rounded,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(AppRoute.profile.name),
            icon: const Icon(
              Icons.person_outline_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 280,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(products: products, index: index);
          },
        ),
      ),
    );
  }
}
