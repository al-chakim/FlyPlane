import 'package:flutter/material.dart';
import 'package:plane/ui/pages/seat_psge.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:plane/ui/widgets/interest.dart';
import 'package:plane/ui/widgets/poto_item.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget BackImage(){
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/des1.png'
            )
          )
        ),
      );
    }

  Widget CustomShadow(){
    return Container(
      width: double.infinity,
      height: 215,
      margin: EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            putih.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ]
        )
      ),
    );
  }

  Widget Content(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin
      ),
      child: Column(
        children: [

          // NOTE: gambar emblem
          Container(
            width: 110,
            height: 25,
            margin: EdgeInsets.only(
              top: 30,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/emblem.png'
                )
              )
            ),
          ),

          // NOTE: title
          Container(
            margin: EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semibold
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light
                        ),
                      )
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
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // NOTE: deskripsi
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30
            ),
            decoration: BoxDecoration(
              color: putih,
              borderRadius: BorderRadius.circular(
                defaultRadius
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // NOTE: about adn desc
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style: blackTextStyle.copyWith(
                    height: 1.5
                  ),
                ),

                SizedBox(height: 20,),

                // NOTE: photo
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),
                ),
                SizedBox(height: 6,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PotoItem(imageUrl: 'assets/p1.png',),
                      PotoItem(imageUrl: 'assets/p3.png',),
                      PotoItem(imageUrl: 'assets/p2.png',),
                      PotoItem(imageUrl: 'assets/des2.png',),
                      PotoItem(imageUrl: 'assets/des3.png',),
                      PotoItem(imageUrl: 'assets/des4.png',),
                      PotoItem(imageUrl: 'assets/des5.png',),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                // NOTE: Interests
                Text(
                  'Interests',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    InterestItem(teks: 'Kids Park',),
                    InterestItem(teks: 'Honor Bridge',),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    InterestItem(teks: 'City Museum',),
                    InterestItem(teks: 'Central Mall',),
                  ],
                ),
              ],
            ),
          ),

          //NOTE: price and book
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, bottom: 40),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                //NOTE: price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR. 2.800.000',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light
                        ),
                      )
                    ],
                  ),
                ),
            
                //NOTE: botton book
                CustomButton(
                  title: 'Book Now', 
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => SeatPage()
                      )
                    );
                  },
                  widht: 170,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackImage(),
            CustomShadow(),
            Content(),
          ],
        ),
      ),
    );
  }
}