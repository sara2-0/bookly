import 'package:bookly_app/core/utiles/app_routes.dart';
import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 30),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            icon: Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
