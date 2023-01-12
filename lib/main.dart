import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registroponto/controller/http_bindings.dart';
import 'package:registroponto/pages/produtos_page.dart';
import 'package:registroponto/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/', 
          page: () => const SplashScreen(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindings(),
            ),
          ],
        ),
      ],
    );
  }
} 