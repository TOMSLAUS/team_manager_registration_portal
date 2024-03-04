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
    return const Scaffold(
      body: Center(
        child: Text("You shouldnt be here!"),
        // child: ElevatedButton(
        //   onPressed: () {
        //     var param1 = "9d7acaa2-dcc3-4a65-bdd8-a4a6b350edf6";
        //     context.goNamed(EventSignupScreen.route, pathParameters: {'id': param1, });
        //
        //   },
        //   child: const Text('Go to the Details screen'),
        // ),
      ),
    );
  }
}