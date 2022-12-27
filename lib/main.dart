import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivetodo/pages/home_page.dart';

void main() async {
  //init hive
  await Hive.initFlutter();

  //open box
  var box = await Hive.openBox('mytodo');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          // secondary: const Colors.yellow.shade700,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
