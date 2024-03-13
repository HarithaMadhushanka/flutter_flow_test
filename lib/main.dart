import 'package:flutter/material.dart';
import 'package:flutter_flow_test/screens/home_screen/home_screen.dart';
import 'package:flutter_flow_test/screens/send_money/send_money_main_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name == '/send_money_main_screen') {
      return MaterialPageRoute(
        settings: settings,
        builder: (ctx) => const SendMoneyMainScreen(),
      );
    }

    return null;
  }
}
