import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KICHWA WEB APP',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('KICHWA LEARNING APP'),
        ),
        body: const Center(
          child: Text('KICHWA WEB APP'),
        ),
      ),
    );
  }
}