import 'package:flutter/material.dart';
import 'package:plane/ui/pages/main_page.dart';
import 'package:plane/ui/widgets/custom_button.dart';
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
            color: ungu.withOpacity(0.8),
            blurRadius: 50,
            offset: Offset(0, 5),
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
                          fontSize: 20,
                          fontWeight: semibold
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
                    fontWeight: semibold
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Text(
              'Balanced',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontWeight: semibold,
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
      return CustomButton(
        title: 'Start Fly Now', 
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
        widht: 220,
        margin: EdgeInsets.only(top: 50),
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