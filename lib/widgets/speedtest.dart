import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internet_speed_test/flutter_internet_speed_test.dart';
import 'package:vortex_vpn/themes/colors.dart';

class SpeedTestView extends StatefulWidget {
  const SpeedTestView({super.key});

  @override
  State<SpeedTestView> createState() => _SpeedTestViewState();
}

class _SpeedTestViewState extends State<SpeedTestView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff21252E),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://firebasestorage.googleapis.com/v0/b/akchobi-000webhostapp.appspot.com/o/flag_germany.png?alt=media&token=f791448f-c66f-45ee-8307-55be7dd4c703',
                height: 30,
                width: 30,
              ),
              const Text(
                'Frankfurt, Germany',
                style: TextStyle(color: TextColor, fontSize: 18),
              ),
              Container(
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.chart_bar,
                      color: TextColor,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '00ms',
                      style: TextStyle(color: TextColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff21252E),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Peak Speed',
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Test your internet speed',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                  Icon(
                    CupertinoIcons.info_circle,
                    color: TextColor,
                  ),
                ],
              ),
              Image.asset('assets/images/speedtest.png'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.arrow_down_circle,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Download',
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '00.00 Mbps',
                        style: TextStyle(
                            color: TextColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    CupertinoIcons.arrow_up_circle,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        'Upload',
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '00.00 Mbps',
                        style: TextStyle(
                            color: TextColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, fixedSize: const Size(300, 50)),
          onPressed: () {},
          child: const Text('Start', style: TextStyle(color: TextColor)),
        ),
      ],
    );
  }
}
