import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/env/env.dart';
import 'package:vortex_vpn/themes/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor,
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/office-building.png',
                width: 200,
              ),
              const SizedBox(height: 100),
              Container(
                width: 350,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                decoration: BoxDecoration(
                  color: SecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                        ),
                        const Text(
                          AppName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Login or create a Account !',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/google-logo.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Login With Google',
                              style: TextStyle(color: TextColor),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/apple-logo.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Login With Apple',
                              style: TextStyle(color: TextColor),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/microsoft-logo.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Login With Microsoft',
                              style: TextStyle(color: TextColor),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
