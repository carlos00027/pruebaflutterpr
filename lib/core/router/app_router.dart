import 'package:flutter/cupertino.dart';
import 'package:pruebatec/features/cat/presentation/screens/detail_screen.dart';
import 'package:pruebatec/features/cat/presentation/screens/landing_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes {
    return {
      'cat.landing': (_) => const LandingScreen(),
      'cat.detail': (_) => const DetailScreen(),
    };
  }
}
