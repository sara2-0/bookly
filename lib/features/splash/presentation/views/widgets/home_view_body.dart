import 'package:bookly_app/core/utiles/assets.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/home_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
        CustomAppBar(),
         HomeListView(),
         SizedBox(height: 50),
         Text("Best Seller", 
         style: Styles.textStyle18,),
          SizedBox(height: 20,),
         BestSellerListViewItem()],
         ),
    );
  }
}

