import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PotoItem extends StatelessWidget {


  final String imageUrl;

  const PotoItem({ Key? key,
  
  required this.imageUrl

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageUrl
            )
          )
      ),
    );
  }
}