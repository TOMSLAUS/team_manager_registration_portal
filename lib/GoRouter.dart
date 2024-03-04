import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:team_manager_registration/ui/EventSignupScreen.dart';
import 'package:team_manager_registration/ui/HomeScreen.dart';


/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
    // routes: <RouteBase>[
    //   GoRoute(
    //     name: EventSignupScreen.route,
    //     path: 'event/:id',  // 👈 Defination of params in the path is important
    //     builder: (context, state) {
    //       return EventSignupScreen(id: state.pathParameters['id']!,);
    //     },
    //   ),
    // ],
  ),
    GoRoute(
      name: EventSignupScreen.route,
      path: '/event/:id',  // 👈 Defination of params in the path is important
      builder: (context, state) {
        return EventSignupScreen(id: state.pathParameters['id']!,);
      },
    ),

  ],
);