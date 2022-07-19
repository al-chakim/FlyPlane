import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetail extends StatelessWidget {

  final String item;
  final String value;
  final Color color;

  const BookingDetail({ Key? key,
  
  required this.item,
  required this.value,
  required this.color

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/cek.png'
                )
              )
            ),
          ),
          Text(
            item,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              color: color
            ),
          ),
        ],
      ),
    );
  }
}