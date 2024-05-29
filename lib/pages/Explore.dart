import 'package:assessment_project/utility/strings/constants.dart';
import 'package:assessment_project/utility/widget/BottomTabBarWidget.dart';
import 'package:assessment_project/utility/widget/Assets.dart';
import 'package:assessment_project/utility/widget/TopMoversPage.dart';
import 'package:assessment_project/utility/widget/TopMoversWidgit.dart';

import 'package:assessment_project/utility/widget/TrendingNewsPage.dart';
import 'package:assessment_project/utility/widget/balance.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Spacer(),
          Image.asset(scan),
          const Spacer(
            flex: 8,
          ),
          const Text(
            'Explore',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 6,
          ),
          Image.asset(search),
          const Spacer(),
          Image.asset(notification),
          const Spacer()
        ],
      ),
      body: Column(
        children: [
          Container(
            height: size.height / 1.4,
            width: size.width,
            child: CustomScrollView(slivers: [
              Balance(),
              Assets(size: size,),
       TopMoversPage(size: size),
     TrendingNewsPage(size: size)    ]),
          ),
     BottomTabBarWidget(size: size)   ],
      ),
    );
  }
}
