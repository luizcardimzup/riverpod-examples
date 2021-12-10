import 'package:exemplos_riverpod/logger.dart';
import 'package:exemplos_riverpod/mock/database.dart';
import 'package:exemplos_riverpod/mock/stream_mock.dart';
import 'package:exemplos_riverpod/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Exemplos RiverPod'),
    );
  }
}
