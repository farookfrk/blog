import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final bool isObscureText;
  const AuthField({super.key,this.hint,required this.controller,this.isObscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      obscuringCharacter: '*',
      controller: controller,
      decoration: InputDecoration(hintText: hint),
    );
  }
}