
import 'package:plane/ui/pages/chekout_page.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:plane/ui/widgets/seat_item.dart';

import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({ Key? key }) : super(key: key);

  @override

  Widget title(){
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Text(
        'Select Your\nFavorite Seat',
        style: blackTextStyle.copyWith(
          fontWeight: semibold,
          fontSize: 24
        ),
      ),
    );
  }

  Widget seatStatus(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // NOTE: available
          Container(
            margin: EdgeInsets.only(right: 6),
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              image: DecorationImage(
                //fit: BoxFit.cover,
                image: AssetImage(
                  'assets/tersedia.png'
                )
              )
            ),
          ),
          Text(
            'Available',
            style: blackTextStyle
          ),

          //NOTE: available
          Container(
            margin: EdgeInsets.only(right: 6, left: 15),
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              image: DecorationImage(
                //fit: BoxFit.cover,
                image: AssetImage(
                  'assets/penuh.png'
                )
              )
            ),
          ),
          Text(
            'Selected',
            style: blackTextStyle
          ),

          //NOTE: avaliable
          Container(
            margin: EdgeInsets.only(right: 6, left: 15),
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              image: DecorationImage(
                //fit: BoxFit.cover,
                image: AssetImage(
                  'assets/kosong.png'
                )
              )
            ),
          ),
          Text(
            'Unavailable',
            style: blackTextStyle
          ),
        ],
      ),
    );
  }

  Widget selectSeat(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
        top: 15,
        bottom: 30
      ),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Column(
        children: [

          //NOTE: indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle,
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle,
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '',
                    style: greyTextStyle,
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle,
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle,
                  ),
                ),
              ),
            ]
          ),

          //NOTE: seat 1
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2,),
                SeatItem(status: 2,),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '1', 
                      style: greyTextStyle,
                    )
                  ),
                ),
                SeatItem(status: 0,),
                SeatItem(status: 2,),
              ],
            ),
          ),

          //NOTE: seat 2
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0,),
                SeatItem(status: 0,),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '2', 
                      style: greyTextStyle,
                    )
                  ),
                ),
                SeatItem(status: 0,),
                SeatItem(status: 2,),
              ],
            ),
          ),

          //NOTE: seat 3
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1,),
                SeatItem(status: 1,),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '3', 
                      style: greyTextStyle,
                    )
                  ),
                ),
                SeatItem(status: 0,),
                SeatItem(status: 0,),
              ],
            ),
          ),

          //NOTE: seat 4
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0,),
                SeatItem(status: 2,),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '4', 
                      style: greyTextStyle,
                    )
                  ),
                ),
                SeatItem(status: 0,),
                SeatItem(status: 0,),
              ],
            ),
          ),

          //NOTE: seat 5
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0,),
                SeatItem(status: 0,),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '5', 
                      style: greyTextStyle,
                    )
                  ),
                ),
                SeatItem(status: 2,),
                SeatItem(status: 0,),
              ],
            ),
          ),

          //NOTE: status seat
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your seat',
                  style: greyTextStyle.copyWith(
                    fontWeight: light
                  ),
                ),
                Text(
                  'A3,B3',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16
                  ),
                )
              ],
            ),
          ),

          //NOTE: total price
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: greyTextStyle.copyWith(
                    fontWeight: light
                  ),
                ),
                Text(
                  'IDR 5.600.000',
                  style: purpleTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 16
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  // Widget button(){
  //   return 
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          //button()
          CustomButton(
            title: 'Continue to Checkout', 
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => CheckOut()
                )
              );
            },
            margin: EdgeInsets.only(
              top: 30, bottom: 40
            ),
          )
        ],
      ),
    );
  }
}