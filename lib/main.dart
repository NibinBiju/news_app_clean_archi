import 'package:flutter/material.dart';
import 'package:new_app_clean_archi/injection_container.dart';

void main() async {
  await initializeDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
