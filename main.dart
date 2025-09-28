import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'form_provider.dart';
import 'form_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FormProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Form Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => FormScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
