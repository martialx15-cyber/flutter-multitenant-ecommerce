const express = require('express');

const router = express.Router();

const orders = [
  {
    id: 'ord_001',
    tenantId: 'tenant_001',
    amount: 219.98,
    status: 'paid',
    items: ['prod_001', 'prod_002'],
  },
];

router.get('/:id', (req, res) => {
  const order = orders.find((item) => item.id === req.params.id);

  if (!order) {
    return res.status(404).json({ message: 'Order not found.' });
  }

  return res.json(order);
});

router.post('/', (req, res) => {
  const { items, total, tenantId } = req.body;

  if (!items || !total || !tenantId) {
    return res.status(400).json({ message: 'Invalid order payload.' });
  }

  return res.status(201).json({
    id: 'ord_002',
    tenantId,
    amount: total,
    status: 'pending_payment',
    items,
  });
});

module.exports = router;
