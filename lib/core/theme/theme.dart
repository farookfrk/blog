import 'package:blog_using_bloc/core/theme/color_palatte.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static _border([color=AppPallete.borderColor]) => OutlineInputBorder(borderSide: BorderSide(color: color,width: 3),borderRadius:const BorderRadius.all(Radius.circular(5),));
  final appTheme=ThemeData.dark().copyWith(
    appBarTheme:const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor
    ),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:const EdgeInsets.all(20),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2)
    )
  );
}