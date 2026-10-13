import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'app.dart';
import 'core/routes/app_routes.dart';
import 'core/services/tenant_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final tenantService = TenantService();
  await tenantService.loadTenant();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TenantService>.value(value: tenantService),
      ],
      child: const EcommerceApp(),
    ),
  );
}
