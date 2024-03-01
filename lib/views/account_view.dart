import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/themes/colors.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.back),
              color: TextColor,
            );
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(color: TextColor, fontSize: 14),
        ),
        backgroundColor: AppColor,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
