import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final double widht;
  final VoidCallback onPressed;

  const CustomButton({Key? key, 
    required this.title,
    this.widht = double.infinity,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 80),
      width: widht,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: ungu,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius)
              )
            ),
        onPressed: onPressed,
        child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 18, 
              fontWeight: medium
          ),
        )
      ),
    );
  }
}
