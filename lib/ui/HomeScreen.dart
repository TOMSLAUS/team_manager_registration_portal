import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'EventSignupScreen.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        // child: Text("You shouldnt be here!"),
        child: ElevatedButton(
          onPressed: () {
            var param1 = "bbb4c6e5-88f8-4100-8486-4ddee8a24b11";
            context.goNamed(EventSignupScreen.route, pathParameters: {'id': param1, });

          },
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}