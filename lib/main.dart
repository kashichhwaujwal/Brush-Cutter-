import 'package:brush_cutter_flutter/config/routeManager.dart';
import 'package:brush_cutter_flutter/config/routes.dart';
import 'package:brush_cutter_flutter/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        )
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: routeManager,
      initialRoute: homeRoute,
    );
  }
}
