const express = require('express');
const jwt = require('jsonwebtoken');

const router = express.Router();

router.post('/login', (req, res) => {
  const { email, password } = req.body;

  if (!email || !password) {
    return res.status(400).json({ message: 'Email and password are required.' });
  }

  const tenantId = req.headers['x-tenant-id'] || 'demo-tenant';

  const token = jwt.sign(
    {
      userId: 'user_123',
      email,
      tenantId,
      role: 'customer',
    },
    process.env.JWT_SECRET || 'development_secret',
    { expiresIn: '7d' }
  );

  return res.json({
    message: 'Login successful',
    token,
    user: {
      id: 'user_123',
      email,
      tenantId,
      role: 'customer',
    },
  });
});

router.post('/register', (req, res) => {
  const { name, email, password, tenantSlug } = req.body;

  if (!name || !email || !password) {
    return res.status(400).json({ message: 'Name, email, and password are required.' });
  }

  return res.status(201).json({
    message: 'User registered successfully',
    user: {
      id: 'user_456',
      name,
      email,
      tenantSlug: tenantSlug || 'demo-store',
      role: 'customer',
    },
  });
});

module.exports = router;
