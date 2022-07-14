import 'package:flutter/material.dart';
import 'package:plane/ui/widgets/des_card.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget Header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy\nAl - Chakim',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.png')
                )
              ),
            )
          ],
        ),
      );
    }

  Widget Popular (){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              name: 'Lake Ciliwung', 
              city: 'Tangerang', 
              imageUrl: 'assets/des1.png',
              rating: 4.5,
            ),
            DestinationCard(
              name: 'White Houses', 
              city: 'Spain', 
              imageUrl: 'assets/des2.png',
              rating: 4.9,
            ),
            DestinationCard(
              name: 'Hill Heyo', 
              city: 'Monaco', 
              imageUrl: 'assets/des3.png',
              rating: 4.2,
            ),
            DestinationCard(
              name: 'Menarra', 
              city: 'Japan', 
              imageUrl: 'assets/des4.png',
              rating: 4.7,
            ),
            DestinationCard(
              name: 'Payung Teduh', 
              city: 'Singapore', 
              imageUrl: 'assets/des5.png',
              rating: 3.3,
            ),
          ],
        ),
      ),
    );
  }

    return ListView(
      children: [
        Header(),
        Popular(),
      ],
    );
  }
}
