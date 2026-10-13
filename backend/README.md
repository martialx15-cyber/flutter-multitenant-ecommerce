# Backend API

This directory contains a starter Express API for a multi-tenant ecommerce platform.

## Quick Start

```bash
cd backend
npm install
cp .env.example .env
npm run dev
```

## Intended API endpoints

- `POST /api/auth/login`
- `POST /api/auth/register`
- `GET /api/tenants/:slug`
- `GET /api/products`
- `GET /api/products/:id`
- `POST /api/cart`
- `POST /api/checkout`
- `GET /api/orders/:id`
- `POST /api/payments/create-intent`

## Multi-tenant notes

Every request should resolve the tenant from:

- `tenant_id` in JWT claims, or
- `x-tenant-id` header, or
- tenant slug in the path / subdomain.

Then enforce authorization and data filtering using the tenant context.
