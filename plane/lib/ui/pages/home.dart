import 'package:flutter/material.dart';
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
      child: Row(
        children: [
          Container(
            height: 320,
            width: 200,
            margin: EdgeInsets.only(left: defaultMargin),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: putih
            ),
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage('assets/des1.png')
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
                          bottomLeft: Radius.circular(18)
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
                            '4.8',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
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
