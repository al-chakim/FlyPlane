import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plane/cubit/auth_cubit.dart';
import 'package:plane/cubit/page_cubit.dart';
import 'package:plane/ui/pages/bonus.dart';
import 'package:plane/ui/pages/main_page.dart';
import 'package:plane/ui/pages/sign_up.dart';
import 'package:plane/ui/pages/splashPage.dart';
import 'package:plane/ui/pages/started.dart';
import 'package:firebase_core/firebase_core.dart';


void main () async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit()
        ),
        BlocProvider(
          create: (context) => AuthCubit()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :(context) => splash(),
          '/Started' :(context) => Started(),
          '/sign-up' : (context) => SignUp(),
          '/bonus' : (context) => Bonus(),
          '/main' : (context) => Mainpage(),
        },
      ),
    );
  }
}