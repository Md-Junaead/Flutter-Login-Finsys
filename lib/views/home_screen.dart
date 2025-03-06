import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/auth_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthViewModel>(context).user;

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body:
          user != null
              ? Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: ${user.name}", style: TextStyle(fontSize: 18)),
                    Text(
                      "Phone: ${user.phoneNo}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Address: ${user.address}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
              : Center(child: Text("No user data found!")),
    );
  }
}
