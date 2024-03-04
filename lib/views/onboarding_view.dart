import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vortex_vpn/env/env.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/views/home_view.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  int _currentPage = 0;
  final _pageControlar = PageController();

  List<OnbordingItem> onbordingItems = [
    OnbordingItem(Title: OnTitle1, Dis: OnBD1, Image: 'assets/images/logo.png'),
    OnbordingItem(
        Title: OnTitle2, Dis: OnBD2, Image: 'assets/images/Server.png'),
    OnbordingItem(
        Title: OnTitle3, Dis: OnBD3, Image: 'assets/images/Security-On.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_currentPage == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            } else if (_currentPage < onbordingItems.length - 1) {
              _pageControlar.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }
          },
          child: const Icon(
            CupertinoIcons.arrow_right,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: AppColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeView()),
                    );
                  },
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Skip',
                      style: TextStyle(color: TextColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageControlar,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: onbordingItems.length,
                    itemBuilder: (context, index) {
                      final item = onbordingItems[index];
                      return Column(
                        children: [
                          Image.asset(item.Image),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            item.Title,
                            style: TextStyle(
                              color: TextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            item.Dis,
                            style: TextStyle(
                              color: TextDisColor,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                      children: List.generate(
                    3,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          _currentPage == index
                              ? CupertinoIcons.circle_fill
                              : CupertinoIcons.circle,
                          color: _currentPage == index
                              ? Colors.deepPurple
                              : Colors.grey,
                          size: 16,
                        ),
                      );
                    },
                  )

                      // Icon(
                      //   CupertinoIcons.circle_fill,
                      //   color: Colors.deepPurple,
                      //   size: 16,
                      // ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Icon(
                      //   CupertinoIcons.circle,
                      //   color: Colors.grey,
                      //   size: 16,
                      // ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Icon(
                      //   CupertinoIcons.circle,
                      //   color: Colors.grey,
                      //   size: 16,
                      // ),

                      ),
                ),
              ],
            ),
          ),
        ));
  }
}

class OnbordingItem {
  final String Title;
  final String Dis;
  final String Image;

  OnbordingItem({required this.Title, required this.Dis, required this.Image});
}
