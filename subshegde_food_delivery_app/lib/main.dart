import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subshegde_food_delivery_app/models/restaurant.dart';
import 'package:subshegde_food_delivery_app/pages/auth/pages/togglePages.dart';
import 'package:subshegde_food_delivery_app/themes/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> ThemeProvider()),
      ChangeNotifierProvider(create: (context)=> Restaurant()),
    ],
    child: const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      home:  const TogglePages(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
