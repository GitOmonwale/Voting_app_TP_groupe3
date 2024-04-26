import 'package:dernier_tp/pages/candidats_form.dart';
import 'package:dernier_tp/pages/canditats_pages.dart';
import 'package:dernier_tp/pages/favorite-canditats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      // home: CandidatsPage(friends: [],),
      home: FriendListPage(),
    );
  }
}
 