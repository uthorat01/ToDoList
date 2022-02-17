import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:todo_getx/ui/home_screen.dart';
import 'package:todo_getx/ui/todo_screen.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'To Do List;

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: title,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      getPages: [
        GetPage(name: TodoScreen.id, page: () => TodoScreen()),
        GetPage(name: HomeScreen.id, page: () => HomeScreen()),
      ],
    );
  }
}