import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      routes: {
        EditView.id: (context) => const EditView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
