import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {

  //NOTE: 0 = available, 1 = selected, 2 = unavalaiable

  final int status;

  const SeatItem({ Key? key, required this.status }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      backgroundColor(){
        switch (status){
          case 0:
            return kAvail;
          case 1:
            return ungu;
          case 2:
            return kUnavail;
          default:
            return kUnavail;
        }
      }

  borderColor(){
    switch (status){
      case 0:
        return ungu;
      case 1:
        return ungu;
      case 2:
        return kUnavail;
      default:
        return kUnavail;
    }
  }

  child(){
    switch (status){
      case 0:
        return SizedBox();
      case 1:
        return Center(
          child: Text(
            'YOU', 
            style: whiteTextStyle.copyWith(
              fontWeight: semibold
            ),
          )
        );
      case 2:
        return SizedBox();
      default:
        return SizedBox();
    }
  }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(
          color: borderColor(),
          width: 2
        )
      ),
      child: child(),
    );
  }
}