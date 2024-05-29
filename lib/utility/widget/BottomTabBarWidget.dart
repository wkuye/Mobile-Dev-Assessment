import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';

class BottomTabBarWidget extends StatelessWidget {
  final Size size;
  const BottomTabBarWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 9,
      width: size.width,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(explore),
              const Text(
                'Explore',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(portfolio),
              const Text(
                'Portfolio',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Earn),
              const Text(
                'Earn',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(spend),
              const Text(
                'Spend',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(connect),
              const Text(
                'Connect',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
