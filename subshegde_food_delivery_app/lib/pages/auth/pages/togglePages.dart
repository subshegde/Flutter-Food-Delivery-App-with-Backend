import 'package:flutter/material.dart';
import 'package:subshegde_food_delivery_app/pages/auth/pages/login.dart';
import 'package:subshegde_food_delivery_app/pages/auth/pages/register.dart';

class TogglePages extends StatefulWidget {
  const TogglePages({super.key});

  @override
  State<TogglePages> createState() => _TogglePagesState();
}

class _TogglePagesState extends State<TogglePages> {
  //initially show login page

  bool showLoginPage = true;

  // toggle b/w login and register page
  void togglePages() {
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return showLoginPage ? Login(onTap: togglePages) : Register(onTap: togglePages);
  }
}