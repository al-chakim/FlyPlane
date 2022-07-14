import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestinationTile extends StatelessWidget {

  final String name;
  final String place;
  final String imageUrl;
  final double rating;

  const DestinationTile({ Key? key,
  
  required this.name,
  required this.place,
  required this.imageUrl,
  this.rating = 0.0

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: putih
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl
                )
              )
            )
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  place,
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
                rating.toString(),
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
}