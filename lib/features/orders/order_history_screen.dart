import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {'id': '#1042', 'status': 'Paid', 'amount': '\$378'},
      {'id': '#1045', 'status': 'Shipped', 'amount': '\$199'},
      {'id': '#1048', 'status': 'Delivered', 'amount': '\$82'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Order history')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(order['id'] as String),
              subtitle: Text(order['status'] as String),
              trailing: Text(order['amount'] as String),
            ),
          );
        },
      ),
    );
  }
}
