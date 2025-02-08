import 'package:flutter/material.dart';
import 'package:subshegde_food_delivery_app/components/myButton.dart';
import 'package:subshegde_food_delivery_app/pages/auth/components/textField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).colorScheme.background,
    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25,),
            Text('Food Delivery App',style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.inversePrimary),),
            const SizedBox(height: 25,),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obsureText: false,
              ),
              const SizedBox(height: 20,),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obsureText: true,
              ),

              const SizedBox(height: 20,),

              Mybutton(
                text: 'Sign In',
                onTap: (){},
                )
          ],
        ),
      ),
    ),
  );
}
}