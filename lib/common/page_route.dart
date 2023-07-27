import 'package:get/get.dart';

import '../main.dart';
import '../view/home_screen.dart';
import '../view/sign_in_screen.dart';
import '../view/sign_up_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: "/", page: () => MyApp()),
  GetPage(name: "/signIn", page: () => SignInScreen()),
  GetPage(name: "/signUp", page: () => SignUpScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),

];
