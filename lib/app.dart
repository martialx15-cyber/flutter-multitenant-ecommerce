import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/routes/app_routes.dart';
import 'core/services/tenant_service.dart';
import 'core/theme/app_theme.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tenantService = context.watch<TenantService>();

    return MaterialApp.router(
      title: 'TenantCart',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRoutes.router(tenantService.currentTenant),
    );
  }
}
