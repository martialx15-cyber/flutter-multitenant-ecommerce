import '../models/product.dart';

class ProductService {
  static final List<Product> _demoProducts = [
    Product(
      id: 'prod_001',
      tenantId: 'tenant_001',
      name: 'Classic Running Shoe',
      price: 129.99,
      category: 'Footwear',
      description: 'Comfortable and durable performance sneaker for everyday use.',
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80',
      rating: 4.8,
      stock: 25,
    ),
    Product(
      id: 'prod_002',
      tenantId: 'tenant_001',
      name: 'Minimalist Backpack',
      price: 89.50,
      category: 'Accessories',
      description: 'A premium everyday bag designed for commuting and travel.',
      imageUrl: 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=800&q=80',
      rating: 4.7,
      stock: 18,
    ),
    Product(
      id: 'prod_003',
      tenantId: 'tenant_001',
      name: 'Wireless Headphones',
      price: 159.00,
      category: 'Electronics',
      description: 'Immersive sound quality and all-day comfort.',
      imageUrl: 'https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=800&q=80',
      rating: 4.9,
      stock: 14,
    ),
    Product(
      id: 'prod_004',
      tenantId: 'tenant_002',
      name: 'Urban Smart Watch',
      price: 249.00,
      category: 'Wearables',
      description: 'Track health, messages, and movement in a sleek premium build.',
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80',
      rating: 4.8,
      stock: 10,
    ),
    Product(
      id: 'prod_005',
      tenantId: 'tenant_002',
      name: 'Leather Office Tote',
      price: 120.00,
      category: 'Accessories',
      description: 'Minimal elegance with generous storage for work essentials.',
      imageUrl: 'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=80',
      rating: 4.6,
      stock: 20,
    ),
    Product(
      id: 'prod_006',
      tenantId: 'tenant_002',
      name: 'Smart Lamp',
      price: 94.99,
      category: 'Home',
      description: 'Ambient lighting with voice assistant and app controls.',
      imageUrl: 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=800&q=80',
      rating: 4.5,
      stock: 22,
    ),
  ];

  static List<Product> getProductsForTenant(String tenantId) {
    return _demoProducts.where((product) => product.tenantId == tenantId).toList();
  }

  static Product? getProductById(String id) {
    for (final product in _demoProducts) {
      if (product.id == id) {
        return product;
      }
    }
    return null;
  }
}
