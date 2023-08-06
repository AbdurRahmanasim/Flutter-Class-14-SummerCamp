import 'package:class14_flutter/MainScreen/MainScreen.dart';
import 'package:class14_flutter/PopUpScreens/Settngs.dart';
import 'package:class14_flutter/Screens/Chats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => MainScreen(),
        "setting": (context) => Settings(),
      },
      initialRoute: '/',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 31, 98, 33)),
      ),
    );
  }
}
