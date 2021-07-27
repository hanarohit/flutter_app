import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Routes {
  static const String login = '/';
  static const String home = '/home';
  static const String orderDetails = '/orders/example';

  static RouteFactory factory = _get;

  static Route<dynamic>? _get(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (ctx) => const LoginDemo(),
        );
      case home:
        return CupertinoPageRoute(
          settings: settings,
          builder: (ctx) => const HomeScreen(),
        );
      case orderDetails:
      /*OrderDetailsArguments args = settings.arguments as OrderDetailsArguments;
        return CupertinoPageRoute(
          settings: settings,
          builder: (ctx) => OrderDetailsScreen(customer: args.customer),
        );*/
      default:
        return null;
    }
  }
}
