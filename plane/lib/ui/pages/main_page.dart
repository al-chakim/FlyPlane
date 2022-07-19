import 'package:flutter/material.dart';
import 'package:plane/ui/pages/home.dart';
import 'package:plane/ui/pages/setting_page.dart';
import 'package:plane/ui/pages/transaction_page.dart';
import 'package:plane/ui/pages/wallet_page.dart';
import 'package:plane/ui/widgets/custom_navigasi.dart';
import '../../shared/theme.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {

    Widget buildContext (){
      return HomePage();
    }

    Widget CustomBarBawah (){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin
          ),
          decoration: BoxDecoration(
            color: putih,
            borderRadius: BorderRadius.circular(defaultRadius)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIcon(
                imageUrl: 'assets/globa.png',
                isSelected: true,
              ),
              CustomIcon(imageUrl: 'assets/book.png',),
              CustomIcon(imageUrl: 'assets/card.png',),
              CustomIcon(imageUrl: 'assets/settings.png',),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          buildContext(),
          CustomBarBawah(),
        ]
      ),
    );
  }
}