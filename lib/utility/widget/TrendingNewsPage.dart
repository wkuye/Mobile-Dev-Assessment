import 'package:assessment_project/utility/widget/TrendingNewsContainer.dart';
import 'package:flutter/material.dart';

import '../strings/constants.dart';

class TrendingNewsPage extends StatelessWidget {
  final Size size;
  const TrendingNewsPage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: size.height / 1.2,
        width: size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(textFieldBackgroundColor))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "Trending news",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'View more',
                  style: TextStyle(
                      color: Color(loginButtonColor),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Spacer(),
            Container(
              height: size.height / 5,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ElonMusk), fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy',
              style: TextStyle(color: Colors.black),
            ),
            const Spacer(),
            const Text(
              'CoinDesk • 2h',
              style: TextStyle(color: Color(balanceColor)),
            ),
            const Divider(),
            TrendingNewsContainer(size: size),
            const Spacer(),
            const Divider(),
            TrendingNewsContainer(size: size),
            const Spacer(),
            const Divider(),
            TrendingNewsContainer(size: size),
          ],
        ),
      ),
    );
  }
}
