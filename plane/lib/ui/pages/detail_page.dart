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


    return Scaffold(
      backgroundColor: putih,
      body: Stack(
        children: [
          BackImage(),
          CustomShadow(),
        ],
      ),
    );
  }
}