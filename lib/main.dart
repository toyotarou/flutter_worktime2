import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'worktime',

      theme: ThemeData.dark(useMaterial3: false),
      themeMode: ThemeMode.dark,

      home: const HomeScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}
