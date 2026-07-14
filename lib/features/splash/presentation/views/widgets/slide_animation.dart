import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  const SlideAnimation({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(
            child: Image.asset(AssetsData.logo),
            //child: Text("book"),
          ),
        );
      },
    );
  }
}
