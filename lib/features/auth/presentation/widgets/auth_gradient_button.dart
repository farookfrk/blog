import 'package:blog_using_bloc/core/theme/color_palatte.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String label;
  const AuthGradientButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppPallete.gradient1, AppPallete.gradient2],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(360, 50),
                backgroundColor: AppPallete.transparentColor,
                shadowColor: AppPallete.transparentColor),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )));
  }
}
