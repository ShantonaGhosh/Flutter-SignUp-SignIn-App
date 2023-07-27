
import 'package:e_commerce_app/view/sign_up_screen.dart';
import 'package:e_commerce_app/widget/custom_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/page_route.dart';
import 'view/sign_in_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Commerce App',
      initialRoute: "/",
       getPages: getPages,
      theme: customThemeData(),
      home: SignInScreen(),
    );
  }
}
