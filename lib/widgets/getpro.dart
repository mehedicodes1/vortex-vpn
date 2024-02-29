import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vortex_vpn/themes/colors.dart';

class GetProModels extends StatefulWidget {
  const GetProModels({super.key});

  @override
  State<GetProModels> createState() => _GetProModelsState();
}

class _GetProModelsState extends State<GetProModels> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
              vertical: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(99, 63, 81, 181),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MONTHLY',
                    style: TextStyle(color: TextColor, fontSize: 12),
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_up_circle_fill,
                    color: TextColor,
                  )
                ],
              ),
              const Text(
                '\$19.99/month',
                style: TextStyle(color: TextColor, fontSize: 25),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 53, 52, 68),
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 85, 85)),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text(
                  '1Week Free Trial',
                  style: TextStyle(color: TextDisColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
              vertical: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(99, 63, 81, 181),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MONTHLY',
                    style: TextStyle(color: TextColor, fontSize: 12),
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_up_circle,
                    color: TextColor,
                  )
                ],
              ),
              const Text(
                '\$19.99/month',
                style: TextStyle(color: TextColor, fontSize: 25),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 53, 52, 68),
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 85, 85)),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text(
                  '1Week Free Trial',
                  style: TextStyle(color: TextDisColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
              vertical: BorderSide(
                color: Color.fromARGB(255, 114, 114, 116),
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(99, 63, 81, 181),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MONTHLY',
                    style: TextStyle(color: TextColor, fontSize: 12),
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_up_circle,
                    color: TextColor,
                  )
                ],
              ),
              const Text(
                '\$19.99/month',
                style: TextStyle(color: TextColor, fontSize: 25),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 53, 52, 68),
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 85, 85)),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text(
                  '1Week Free Trial',
                  style: TextStyle(color: TextDisColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
