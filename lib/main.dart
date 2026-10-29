import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/favorit.dart';
import 'pages/beranda_page.dart';

void main() {
  runApp(

    ChangeNotifierProvider(
      create: (_) => FavoritProvider(),
      child: const GreenShopApp(),
    ),
  );
}

class GreenShopApp extends StatelessWidget {
  const GreenShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenShop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

      home: const BerandaPage(),
    );
  }
}