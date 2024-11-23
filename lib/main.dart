import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'Constants/Constants.dart';
import 'GoRouter.dart';

void main() {
  usePathUrlStrategy();
  runApp(
    MyApp(), // Wrap your app

  );
}

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Constants.lightmode,
      title: "Oli sport registration",
      routerConfig: router,
    );
  }
}