import 'package:flutter/material.dart';
import 'package:plane/shared/theme.dart';
import 'package:plane/ui/widgets/custom_button.dart';

class SuccesCheckout extends StatelessWidget {
  const SuccesCheckout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/jadwal.png'
                  )
                )
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 32
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'My Bookings', 
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false
                );
              },
              widht: 250,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}