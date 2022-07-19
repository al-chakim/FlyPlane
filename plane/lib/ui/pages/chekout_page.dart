import 'package:flutter/material.dart';
import 'package:plane/shared/theme.dart';
import 'package:plane/ui/pages/succes_checkout.dart';
import 'package:plane/ui/widgets/booking_detail.dart';
import 'package:plane/ui/widgets/custom_button.dart';

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
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //NOTE: destination tile
          Row(
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

          // NOTE: detail booking
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'Booking Detail',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16
              ),
            ),
          ),

          //NOTE: detail item
          BookingDetail(
            item: 'Traveler', 
            value: '2 person', 
            color: item
          ),
          BookingDetail(
            item: 'Seat', 
            value: '3A, 3B', 
            color: item
          ),
          BookingDetail(
            item: 'Insurance', 
            value: 'YES', 
            color: ijo
          ),
          BookingDetail(
            item: 'TRefundable', 
            value: 'NO', 
            color: merah
          ),
          BookingDetail(
            item: 'VAT', 
            value: '45%', 
            color: item
          ),
          BookingDetail(
            item: 'Price', 
            value: 'IDR 8.500.690', 
            color: item
          ),
          BookingDetail(
            item: 'Grand Total', 
            value: 'IDR 12.000.000', 
            color: ungu
          ),
        ],
      ),
    );
  }

  Widget payment(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Payment',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [

                //NOTE: gambar pesawat
                Container(
                  height: 70,
                  width: 100,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/mon.png'
                      )
                    )
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/logo1.png'
                              )
                            )
                          ),
                        ),
                        Text(
                          'PAY',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 18
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Current Balenced',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tacButton(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        bottom: 50, 
        top: 30
      ),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
          fontWeight: light,
          fontSize: 16,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          route(),
          booking(),
          payment(),
          CustomButton(
            title: 'Pay Now', 
            margin: EdgeInsets.only(
              top: 30,
            ),
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => SuccesCheckout()
                )
              );
            },
          ),
          tacButton(),
        ],
      ),
    );
  }
}