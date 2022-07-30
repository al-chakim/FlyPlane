import 'package:flutter/material.dart';
import 'package:plane/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {

  final String name;
  final String city;
  final String imageUrl;
  final double rating;


  const DestinationCard({ Key? key,
  
  required this.name,
  required this.city,
  required this.imageUrl,
  this.rating = 0.0

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => DetailPage()
          )
        );
      },
      child: Container(
        height: 320,
        width: 200,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: putih
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl)
                )
              ),
              child: Align(
                alignment: Alignment.topRight,
                  child: Container(
                    width: 55,
                    height: 25,
                    decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        topRight: Radius.circular(18)
                      )
                    ),
                    child: Row(
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
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}