import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String baseUrl = "http://108.181.173.121:7070";

  // Login function
  static Future<UserModel?> loginUser(String email, String password) async {
    final url = Uri.parse("$baseUrl/login");

    try {
      final response = await http.post(
        url,
        body: jsonEncode({"email": email, "password": password}),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserModel.fromJson(data); // Parse user data
      } else {
        return null; // Login failed
      }
    } catch (e) {
      print("Login Error: $e");
      return null;
    }
  }
}
