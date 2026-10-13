import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/cart_provider.dart';
import '../../core/services/product_service.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductService.getProductsForTenant('tenant_001');

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: SizedBox(
                width: 48,
                height: 48,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported_outlined),
                  ),
                ),
              ),
              title: Text(product.name),
              subtitle: Text('⭐ ${product.rating} • ${product.category}'),
              trailing: Text('\$${product.price.toStringAsFixed(2)}'),
              onTap: () => Navigator.of(context).pushNamed('productDetail', arguments: product.id),
            ),
          );
        },
      ),
    );
  }
}
