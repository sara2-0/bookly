import 'package:bookly_app/features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/home_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppBar(), HomeListView()]);
  }
}
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


