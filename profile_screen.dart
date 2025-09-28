import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'form_provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 80, color: Colors.deepPurple),
                SizedBox(height: 20),
                Text("Welcome, ${formProvider.username}!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Email: ${formProvider.email}",
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  label: Text("Back to Form"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
