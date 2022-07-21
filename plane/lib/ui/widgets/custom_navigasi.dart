import 'package:flutter/material.dart';
import '../../cubit/page_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomIcon extends StatelessWidget {

  final int index;
  final String imageUrl;

  const CustomIcon({Key? key, 

  required this.index,
  required this.imageUrl, 
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<PageCubit>().setState(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl, 
            height: 24, 
            width: 24,
            color: context.read<PageCubit>().state == index 
              ? ungu 
              : abu,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index 
              ? ungu 
              : trans,
              borderRadius: BorderRadius.circular(defaultRadius)
            ),
          )
        ],
      ),
    );
  }
}
