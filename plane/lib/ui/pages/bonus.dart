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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            SizedBox(height: 40,),
            Text(
              'Kompas Gramedia',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 26
              ),
            )
          ],
        ),
      );
    }

    Widget title (){
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semibold
          ),
        ),
      );
    }

    Widget subtitle (){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget start (){
      return Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: (){}, 
          style: TextButton.styleFrom(
            backgroundColor: ungu,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)
            )
          ),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium
            ),
          )
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
              title(),
              subtitle(),
              start(),
            ],
          ),
        ),
      ),
    );
  }
}