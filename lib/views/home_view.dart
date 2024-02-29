import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/env/env.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/widgets/dashboard.dart';
import 'package:vortex_vpn/widgets/drawer.dart';
import 'package:vortex_vpn/widgets/speedtest.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: AppColor,
          appBar: AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    CupertinoIcons.list_dash,
                    color: TextColor,
                  ),
                );
              },
            ),
            backgroundColor: AppColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: TextColor,
                      fontSize: 15),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_circle,
                        size: 16,
                        color: TextColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Get Premium',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
            bottom: const TabBar(
              indicatorColor: TextColor,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.square_grid_2x2,
                        color: TextColor,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(color: TextColor, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.speedometer,
                        color: TextColor,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SpeedTest',
                        style: TextStyle(color: TextColor, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          drawer: const DrawerView(),
          body: const TabBarView(children: [
            DashboardView(),
            SpeedTestView(),
          ])),
    );
  }
}
