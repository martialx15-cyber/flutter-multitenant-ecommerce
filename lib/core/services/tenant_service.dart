import 'package:flutter/material.dart';

import '../models/tenant.dart';

class TenantService extends ChangeNotifier {
  Tenant? _currentTenant;

  Tenant? get currentTenant => _currentTenant;

  Future<void> loadTenant() async {
    _currentTenant = Tenant(
      id: 'tenant_001',
      name: 'Demo Boutique',
      slug: 'demo-boutique',
      domain: 'demo-boutique.example.com',
    );
    notifyListeners();
  }

  void updateTenant(Tenant tenant) {
    _currentTenant = tenant;
    notifyListeners();
  }
}
