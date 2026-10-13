import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/providers/auth_provider.dart';
import 'core/providers/cart_provider.dart';
import 'core/services/tenant_service.dart';
import 'core/theme/app_theme.dart';
import 'core/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final tenantService = TenantService();
  await tenantService.loadTenant();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TenantService>.value(value: tenantService),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const EcommerceApp(),
    ),
  );
}
