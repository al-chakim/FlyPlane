import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plane/cubit/page_cubit.dart';
import 'package:plane/ui/pages/home.dart';
import 'package:plane/ui/pages/setting_page.dart';
import 'package:plane/ui/pages/transaction_page.dart';
import 'package:plane/ui/pages/wallet_page.dart';
import 'package:plane/ui/widgets/custom_navigasi.dart';
import '../../shared/theme.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContext(int currentIndex) {

      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return Transaction();
        case 2:
          return Wallet();
        case 3:
          return Setting();
        default:
          return HomePage();
      }

    }

    Widget CustomBarBawah() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: putih, borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIcon(
                index: 0,
                imageUrl: 'assets/globa.png',
              ),
              CustomIcon(
                index: 1,
                imageUrl: 'assets/book.png',
              ),
              CustomIcon(
                index: 2,
                imageUrl: 'assets/card.png',
              ),
              CustomIcon(
                index: 3,
                imageUrl: 'assets/settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: bg,
          body: Stack(children: [
            buildContext(currentIndex),
            CustomBarBawah(),
          ]),
        );
      },
    );
  }
}
