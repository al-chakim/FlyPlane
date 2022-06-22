import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Bonus extends StatefulWidget {
  const Bonus({ Key? key }) : super(key: key);

  @override
  State<Bonus> createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  @override
  Widget build(BuildContext context) {


    Widget bonusCard(){
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/mon.png',
            )
          ),
          boxShadow: [BoxShadow(
            color: ungu.withOpacity(0.5),
            blurRadius: 50,
            offset: Offset(0, 10)
          )
          ] 
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium
                        ),
                      ),
                      Text(
                        'Al - Chakim',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo1.png')
                    )
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
            ],
          ),
        ),
      ),
    );
  }
}