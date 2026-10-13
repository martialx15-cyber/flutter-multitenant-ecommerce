import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'name': 'Classic Sneaker', 'price': '\$129', 'rating': '4.8'},
      {'name': 'Leather Tote', 'price': '\$89', 'rating': '4.7'},
      {'name': 'Smart Watch', 'price': '\$249', 'rating': '4.9'},
      {'name': 'Noise Cancelling', 'price': '\$159', 'rating': '4.6'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: Text(product['name'] as String),
              subtitle: Text('⭐ ${product['rating']}'),
              trailing: Text(product['price'] as String),
              onTap: () => context.go('/products/${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
