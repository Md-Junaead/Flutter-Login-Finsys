import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

class AuthViewModel extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;
  String? _errorMessage;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // Login function
  Future<bool> login(String email, String password) async {
    _isLoading = true;
    notifyListeners(); // Notify UI to show loading

    final result = await ApiService.loginUser(email, password);
    if (result != null) {
      _user = result;
      _isLoading = false;
      notifyListeners(); // Notify UI of new state
      return true;
    } else {
      _errorMessage = "Invalid email or password!";
      _isLoading = false;
      notifyListeners(); // Notify UI of error
      return false;
    }
  }
}
