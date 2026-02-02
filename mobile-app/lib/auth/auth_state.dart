import 'package:flutter/foundation.dart';
import 'auth_service.dart';

class AuthState extends ChangeNotifier {
  final AuthService _authService = AuthService();

  bool _authenticated = false;
  bool get isAuthenticated => _authenticated;

  Future<void> checkAuth() async {
    _authenticated = await _authService.isLoggedIn();
    notifyListeners();
  }

  Future<void> logout() async {
    await _authService.logout();
    _authenticated = false;
    notifyListeners();
  }
}