import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/views/account_view.dart';
import 'package:vortex_vpn/views/pro_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: const BoxDecoration(color: Color(0xff7351EE)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/user.png',
                        height: 70,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 6),
                      decoration: BoxDecoration(
                          color: const Color(0xff5B40BF),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text('SIGN IN',
                          style: TextStyle(color: TextColor)),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProView(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.star_circle,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Upgrade to premium',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountView(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.profile_circled,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'My Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.settings,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.eye,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Show Logs',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.share,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share App',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.circle_grid_hex,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'More App',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.star_lefthalf_fill,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Rate App',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.mail,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Contact us',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.info,
                      color: Color(0xff5B40BF),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'About us',
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 200, 209),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: 255,
              color: CupertinoColors.lightBackgroundGray,
            ),
          ],
        ),
      ),
    );
  }
}
