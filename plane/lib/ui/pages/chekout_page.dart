import 'package:flutter/material.dart';
import 'package:plane/shared/theme.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({ Key? key }) : super(key: key);

  @override

  Widget route(){
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 290,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/rute.png'
                )
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 24
                    ),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 24
                    ),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget booking(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30
      ),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child:  Row(
        children: [

          //NOTE: destination tile
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/des1.png'
                )
              )
            )
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lake Ciliwung',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Tngerang',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/star.png')
                  )
                ),
              ),
              SizedBox(width: 3,),
              Text(
                '4.5',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          route(),
          booking(),
        ],
      ),
    );
  }
}