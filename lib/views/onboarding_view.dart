import 'package:flutter/material.dart';
import 'package:vortex_vpn/themes/colors.dart';
import 'package:vortex_vpn/views/login_view.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  int currentPage = 0;
  PageController pageController = PageController();
  List<Map<String, dynamic>> onboardData = [
    {
      'image': 'assets/images/logo.png',
      'title': 'Vortex VPN',
      'description': 'Welcome to the most gorgius vpn ever',
    },
    {
      'image': 'assets/images/shield.png',
      'title': 'Vortex VPN',
      'description': 'Welcome to the most gorgius vpn ever',
    },
    {
      'image': 'assets/images/network.png',
      'title': 'Vortex VPN',
      'description': 'Welcome to the most gorgius vpn ever',
    }
  ];
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor,
      body: Stack(
        children: [
          PageView.builder(
              controller: pageController,
              itemCount: onboardData.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (BuildContext context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboardData[index]['image'],
                      width: 150,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      onboardData[index]['title'],
                      style: const TextStyle(color: TextColor, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      onboardData[index]['description'],
                      style: const TextStyle(color: TextDisColor, fontSize: 14),
                    ),
                  ],
                );
              }),
          (currentPage == (onboardData.length - 1))
              ? const SizedBox()
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.indigo),
                        child: const Text(
                          'Next',
                          style: TextStyle(color: TextColor),
                        ),
                      ),
                    ),
                  ),
                ),
          (currentPage == (onboardData.length - 1))
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 50),
                              backgroundColor: Colors.indigo),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ),
                            );
                          },
                          child: const Text(
                            'Login/Register',
                            style: TextStyle(color: TextColor),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 50),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const Text(
                            'Skip',
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
