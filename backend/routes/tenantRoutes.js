const express = require('express');

const router = express.Router();

const tenants = [
  {
    id: 'tenant_001',
    name: 'Demo Boutique',
    slug: 'demo-boutique',
    domain: 'demo-boutique.example.com',
  },
  {
    id: 'tenant_002',
    name: 'Urban Vibe',
    slug: 'urban-vibe',
    domain: 'urban-vibe.example.com',
  },
];

router.get('/:slug', (req, res) => {
  const tenant = tenants.find((item) => item.slug === req.params.slug);

  if (!tenant) {
    return res.status(404).json({ message: 'Tenant not found.' });
  }

  return res.json(tenant);
});

module.exports = router;
