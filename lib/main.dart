import 'package:flutter/material.dart';
import 'package:vortex_vpn/env/env.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/views/home_view.dart';
import 'package:vortex_vpn/views/pro_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: AppColor,
      title: AppName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
