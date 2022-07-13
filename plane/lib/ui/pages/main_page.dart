import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {

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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/globa.png',
                        )
                      )
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: ungu
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/book.png',
                        )
                      )
                    ),
                  ),
                  // Container(
                  //   width: 30,
                  //   height: 2,
                  //   decoration: BoxDecoration(
                  //     color: ungu
                  //   ),
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/card.png',
                        )
                      )
                    ),
                  ),
                  // Container(
                  //   width: 30,
                  //   height: 2,
                  //   decoration: BoxDecoration(
                  //     color: ungu
                  //   ),
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/settings.png',
                        )
                      )
                    ),
                  ),
                  // Container(
                  //   width: 30,
                  //   height: 2,
                  //   decoration: BoxDecoration(
                  //     color: ungu
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          CustomBarBawah(),
        ]
      ),
    );
  }
}