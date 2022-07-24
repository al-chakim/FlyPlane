import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class splash extends StatefulWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 5), (){

        User? user =FirebaseAuth.instance.currentUser;

        if ( user == null ) {
          Navigator.pushNamedAndRemoveUntil(context, '/Started', (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        }

        
        }
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ungu,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo1.png'
                  )
                )
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10
              ),
            ),
            // Text(
            //   'Fly',
            //   style: whiteTextStyle.copyWith(
            //     fontSize: 32,
            //     fontWeight: medium,
            //     letterSpacing: 10
            //   ),
            // )
          ],
        )
      ),
    );
  }
}