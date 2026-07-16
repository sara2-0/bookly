import 'package:bookly_app/features/home/presentation/views/widgets/home_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: HomeListViewItem(),
        );
      }),
    );
  }
}