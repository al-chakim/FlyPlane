import 'package:flutter/material.dart';
import 'package:flyplanee/ui/pages/splashPage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
    );
  }
}