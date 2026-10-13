import 'package:flutter/foundation.dart';

import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider extends ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => Map.unmodifiable(_items);

  int get itemCount {
    return _items.values.fold(0, (total, item) => total + item.quantity);
  }

  double get subtotal {
    return _items.values.fold(0.0, (total, item) => total + item.total);
  }

  bool get isEmpty => _items.isEmpty;

  void addItem(Product product, {int quantity = 1}) {
    final existing = _items[product.id];
    if (existing == null) {
      _items[product.id] = CartItem(
        productId: product.id,
        name: product.name,
        price: product.price,
        quantity: quantity,
      );
    } else {
      _items[product.id] = CartItem(
        productId: product.id,
        name: product.name,
        price: product.price,
        quantity: existing.quantity + quantity,
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
