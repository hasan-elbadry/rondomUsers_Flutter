import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_using_api/providers/home_page_provider.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(child: const HomePage(),create: (context) => HomePageProvider()),
      debugShowCheckedModeBanner: false,
    );
  }
}
