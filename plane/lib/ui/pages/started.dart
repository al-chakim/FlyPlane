import 'package:flutter/material.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class Started extends StatefulWidget {
  const Started({ Key? key }) : super(key: key);

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg2.png'))
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32, 
                    fontWeight: semibold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16, fontWeight: light
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  widht: 220,
                  onPressed: (){
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                )
              ],
            ),
          )
          //Image.asset('assets/bg1.png',)
        ],
      ),
    );
  }
}