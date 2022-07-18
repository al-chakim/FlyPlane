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
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Column(
        children: [

          //NOTE: indicator
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle,
                  ),
                )
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle,
                  ),
                )
              ),
              Expanded(
                child: Center(
                  child: Text(
                    ''
                  ),
                )
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle,
                  ),
                )
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle,
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }

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
        ],
      ),
    );
  }
}