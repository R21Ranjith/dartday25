import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'form_provider.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Form Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Username
              TextFormField(
                decoration: InputDecoration(labelText: "Username"),
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter username" : null,
                onChanged: (value) => formProvider.setUsername(value),
              ),
              SizedBox(height: 16),

              // Email
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) return "Enter email";
                  if (!value.contains("@")) return "Enter valid email";
                  return null;
                },
                onChanged: (value) => formProvider.setEmail(value),
              ),
              SizedBox(height: 20),

              // Submit button → Navigate to Profile
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/profile');
                  }
                },
                child: Text("Submit & Go to Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
