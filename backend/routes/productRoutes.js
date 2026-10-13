const express = require('express');

const router = express.Router();

const products = [
  {
    id: 'prod_001',
    tenantId: 'tenant_001',
    name: 'Classic Running Shoe',
    price: 129.99,
    category: 'Footwear',
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80',
    description: 'Comfortable everyday performance sneaker for daily motion.',
    rating: 4.8,
    stock: 24,
  },
  {
    id: 'prod_002',
    tenantId: 'tenant_001',
    name: 'Minimalist Backpack',
    price: 89.5,
    category: 'Accessories',
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80',
    description: 'Smart storage and premium finish for everyday commuting.',
    rating: 4.6,
    stock: 15,
  },
  {
    id: 'prod_003',
    tenantId: 'tenant_002',
    name: 'Urban Smart Watch',
    price: 249,
    category: 'Wearables',
    imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80',
    description: 'Track activity, premium design, and daily productivity.',
    rating: 4.7,
    stock: 10,
  },
];

router.get('/', (req, res) => {
  const tenantId = req.headers['x-tenant-id'] || 'tenant_001';
  const filteredProducts = products.filter((product) => product.tenantId === tenantId);

  return res.json(filteredProducts);
});

router.get('/:id', (req, res) => {
  const product = products.find((item) => item.id === req.params.id);

  if (!product) {
    return res.status(404).json({ message: 'Product not found.' });
  }

  return res.json(product);
});

module.exports = router;
