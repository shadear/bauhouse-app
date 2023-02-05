import 'package:bauhouse/src/data/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.products,
    required this.index,
  });

  final List<Product> products;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 1,
      child: InkWell(
        enableFeedback: true,
        onTap: () {},
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: '${products[index].image}?random=$index$index',
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
              placeholder: (context, url) {
                return Center(
                  child: CircularProgressIndicator(
                    color: theme.colorScheme.primary,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return const Center(
                  child: Icon(
                    Icons.error,
                    size: 48,
                  ),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 12,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 1,
                            products[index].name,
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            maxLines: 1,
                            products[index].companyName,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: theme.colorScheme.secondary,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      maxLines: 1,
                      "\$${products[index].price}",
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: theme.colorScheme.primary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
