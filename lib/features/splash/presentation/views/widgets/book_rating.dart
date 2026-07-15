import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rate_rounded, 
        color: Color(0xffFFDD4F),),
        const SizedBox(width: 6.3,),
        const Text("4.8", 
        style: Styles.textStyle16,),
        const SizedBox(width: 5,),
         Text("(4899)", 
        style: Styles.textStyle14.copyWith(
          color:const Color(0xff707070)),)
      ],
    );
  }
}