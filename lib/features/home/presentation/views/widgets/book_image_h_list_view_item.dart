import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';

class BookImageHListViewItem extends StatelessWidget {
  const BookImageHListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
