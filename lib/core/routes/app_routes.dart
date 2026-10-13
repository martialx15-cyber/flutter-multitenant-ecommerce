import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/auth/login_screen.dart';
import '../../features/auth/register_screen.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/checkout/checkout_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/orders/order_history_screen.dart';
import '../../features/products/product_detail_screen.dart';
import '../../features/products/product_list_screen.dart';
import '../../features/profile/profile_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../models/tenant.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const products = '/products';
  static const productDetail = '/products/:productId';
  static const cart = '/cart';
  static const checkout = '/checkout';
  static const orders = '/orders';
  static const profile = '/profile';

  static GoRouter router(Tenant? tenant) {
    return GoRouter(
      initialLocation: splash,
      routes: [
        GoRoute(
          path: splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: login,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: register,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: products,
          builder: (context, state) => const ProductListScreen(),
        ),
        GoRoute(
          path: productDetail,
          builder: (context, state) {
            final productId = state.pathParameters['productId'] ?? 'prod_001';
            return ProductDetailScreen(productId: productId);
          },
        ),
        GoRoute(
          path: cart,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          path: checkout,
          builder: (context, state) => const CheckoutScreen(),
        ),
        GoRoute(
          path: orders,
          builder: (context, state) => const OrderHistoryScreen(),
        ),
        GoRoute(
          path: profile,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    );
  }
}
