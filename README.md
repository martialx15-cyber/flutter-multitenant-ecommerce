# Flutter Multi-Tenant Ecommerce

A cross-platform Flutter ecommerce application built for multi-tenant commerce with a clean architecture, tenant-aware APIs, and modern mobile UX.

## Features

- Multi-tenant storefront support
- Authentication and onboarding
- Product discovery and filtering
- Cart and checkout flow
- Order tracking
- Profile and account management
- Stripe-ready payment architecture
- Shared backend contract for tenant-specific commerce

## Tech Stack

- Flutter + Dart
- Provider + GoRouter
- Dio for API calls
- SharedPreferences for local persistence
- Multi-tenant backend API contract (Node.js/Express support included)

## Project Structure

- `lib/` contains the Flutter application
- `backend/` contains a starter Node.js API blueprint for multi-tenant commerce
- `assets/` can contain brand and product images

## Quick Start

1. Install Flutter and Dart.
2. Run:
   ```bash
   flutter pub get
   flutter run
   ```
3. For backend API service setup, see `backend/README.md`.

## Suggested Multi-Tenant Model

Use a shared database model with `tenant_id` in critical tables:

- `tenants`
- `users`
- `products`
- `categories`
- `orders`
- `cart_items`
- `payments`

This keeps the MVP simple while allowing strong tenant isolation and scaling.

## App Screens

- Splash
- Login / Register
- Storefront / Home
- Product list and detail
- Cart
- Checkout
- Order history
- Profile

## Payment Integration

The app is prepared for Stripe Payment Sheet / Checkout integration. The backend API layer is designed to support merchant-specific tenant payment handling.

## License

MIT
