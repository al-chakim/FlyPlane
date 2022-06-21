import 'package:flutter/material.dart';
import 'package:plane/ui/pages/sign_up.dart';
import 'package:plane/ui/pages/splashPage.dart';
import 'package:plane/ui/pages/started.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => splash(),
        '/Started' :(context) => Started(),
        '/sign-up' : (context) => SignUp()
      },
    );
  }
}