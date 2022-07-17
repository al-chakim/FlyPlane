import 'package:flutter/material.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:plane/ui/widgets/custom_form.dart';
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

          // gambar emblem
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

          //title
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

          // deskripsi
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
              children: [

                // about adn desc
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

    return Scaffold(
      backgroundColor: putih,
      body: Stack(
        children: [
          BackImage(),
          CustomShadow(),
          Content(),
        ],
      ),
    );
  }
}