import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/env/env.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/widgets/getpro.dart';

class ProView extends StatefulWidget {
  const ProView({super.key});

  @override
  State<ProView> createState() => _ProViewState();
}

class _ProViewState extends State<ProView> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/star.png', height: 150),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '$PTitle',
                style: TextStyle(color: TextColor, fontSize: 25),
              ),
              const Text(
                PDis,
                style: TextStyle(color: TextDisColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 64, 92),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(CupertinoIcons.eyeglasses,
                        color: Colors.white, size: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$PrT1',
                        style: TextStyle(color: TextColor),
                      ),
                      Text(
                        '$PrD1',
                        style: TextStyle(color: TextDisColor),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 90, 92),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(CupertinoIcons.bolt,
                        color: Colors.white, size: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$PrT2',
                        style: TextStyle(color: TextColor),
                      ),
                      Text(
                        '$PrD2',
                        style: TextStyle(color: TextDisColor),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 92, 62),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(CupertinoIcons.eye_slash_fill,
                        color: Colors.white, size: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$PrT3',
                        style: TextStyle(color: TextColor),
                      ),
                      Text(
                        '$PrD3',
                        style: TextStyle(color: TextDisColor),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 92, 64, 59),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(CupertinoIcons.shield_fill,
                        color: Colors.white, size: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$PrT4',
                        style: TextStyle(color: TextColor),
                      ),
                      Text(
                        '$PrD4',
                        style: TextStyle(color: TextDisColor),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const GetProModels(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(300, 50)),
                onPressed: () {},
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: TextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
