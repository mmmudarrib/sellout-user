import 'package:flutter/material.dart';
import 'package:sellout/screens/auth/auth_type_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const Color _kPrimaryColor = Color(0xFFD32F2F);
    const Color _kSecondaryColor = Color(0xFF7C4DFF);
    return MaterialApp(
      title: 'SellOut',
      theme: ThemeData(
        primaryColor: _kPrimaryColor,
        colorScheme: const ColorScheme(
          primary: _kPrimaryColor,
          primaryVariant: Colors.red,
          secondary: _kSecondaryColor,
          secondaryVariant: Colors.deepPurple,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.red,
          onPrimary: Colors.red,
          onSecondary: Colors.deepPurple,
          onSurface: Colors.grey,
          onBackground: Colors.grey,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      home: const AuthTypeScreen(),
      routes: <String, WidgetBuilder>{
        AuthTypeScreen.routeName: (BuildContext ctx) => const AuthTypeScreen(),
      },
    );
  }
}