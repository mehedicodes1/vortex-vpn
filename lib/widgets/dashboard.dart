import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/themes/colors.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Not Connected',
            style: TextStyle(
                color: TextColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '00.00.00',
            style: TextStyle(
              color: TextColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade800,
                fixedSize: const Size(300, 50)),
            onPressed: () {},
            child: const Text(
              'Quick connect',
              style: TextStyle(color: TextColor),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff21252E)),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_down_circle,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white38),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '00.00 Mbps',
                      style: TextStyle(
                          color: TextColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.green.shade500,
                      height: 3,
                      width: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff21252E)),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_up_circle,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Upload',
                          style: TextStyle(color: Colors.white38),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '00.00 Mbps',
                      style: TextStyle(
                          color: TextColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.blue.shade500,
                      height: 3,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.location,
                color: Colors.indigo.shade500,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Your IP: 192.168.0.1',
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
                const Icon(
                  CupertinoIcons.wifi,
                  color: TextColor,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: 350,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xffFE5454),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(CupertinoIcons.globe, size: 50, color: TextColor),
                Text(
                  'Change Server',
                  style: TextStyle(color: TextColor),
                ),
                Icon(
                  CupertinoIcons.arrowtriangle_right,
                  color: TextColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
