import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatec/core/router/app_router.dart';
import 'package:pruebatec/core/theme/app_theme.dart';
import 'package:pruebatec/features/cat/presentation/provider/detail_provider.dart';
import 'package:pruebatec/features/cat/presentation/provider/landing_provider.dart';
import 'package:pruebatec/init_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await initDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DetailProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'catbreeds',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      initialRoute: 'cat.landing',
      routes: AppRouter.routes,
    );
  }
}
