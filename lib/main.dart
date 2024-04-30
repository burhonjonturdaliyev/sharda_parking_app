import 'package:flutter/material.dart';
import 'src/presentation/views/home.dart';
import 'src/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routes = Routes(); // Create an instance of the Routes class
    // final name = RouteName(); // Create an instance of the initial class
    return MaterialApp(
      title: 'Sharda Parking',
      routes: routes.baseRoutes, // Access baseRoutes through the instance
      // initialRoute: name.home,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
