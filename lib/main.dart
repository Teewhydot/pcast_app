import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pcast_app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.topicScreen,
      routes: AppRoutes.routes,
    );
  }
}
