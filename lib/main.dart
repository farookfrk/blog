import 'package:blog_using_bloc/core/secrets/app_secret.dart';
import 'package:blog_using_bloc/core/theme/theme.dart';
import 'package:blog_using_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      url: AppSecret.supaBaseUrl, anonKey: AppSecret.anonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().appTheme,
      home: const LoginPage(),
    );
  }
}
