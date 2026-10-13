import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = [
      {'name': 'Classic Sneaker', 'qty': 1, 'price': '\$129'},
      {'name': 'Smart Watch', 'qty': 1, 'price': '\$249'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My cart')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(item['name'] as String),
              subtitle: Text('Qty: ${item['qty']}'),
              trailing: Text(item['price'] as String),
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Proceed to checkout'),
          ),
        ),
      ),
    );
  }
}
