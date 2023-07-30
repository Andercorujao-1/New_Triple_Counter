import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'screens/counter_page_actions.dart';
import 'screens/counter_page.dart';
import 'package:get/get.dart';


void main() {
  GetIt getIt = GetIt.I;
  getIt.registerLazySingleton<CounterPageActions>(()=>CounterPageActions());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterPage(),
    );
  }
}