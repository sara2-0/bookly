import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(opacity: .8, child: Icon(Icons.search, size: 30)),
        ),
        enabledBorder: builtOutlineInputBorder(),
        focusedBorder: builtOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder builtOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
