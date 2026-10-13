import 'package:flutter/foundation.dart';

import '../models/user.dart';

class AuthProvider extends ChangeNotifier {
  UserProfile? _currentUser;

  UserProfile? get currentUser => _currentUser;
  bool get isAuthenticated => _currentUser != null;

  Future<void> login({required String email, required String password}) async {
    _currentUser = UserProfile(
      id: 'user_101',
      name: 'Demo Customer',
      email: email,
      role: 'customer',
    );
    notifyListeners();
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}
