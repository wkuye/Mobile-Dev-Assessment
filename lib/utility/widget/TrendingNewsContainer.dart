import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';

class TrendingNewsContainer extends StatelessWidget {
  final Size size;
  const TrendingNewsContainer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 8,
      width: size.width,
      child: Row(
        children: [
          Container(
            height: size.height / 3,
            width: size.width / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(ElonMusk), fit: BoxFit.cover),
            ),
          ),
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'Ethereum Co-founder opposes El-',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Spacer(),
              Text(
                'salvador Bitcoin Adoption policy',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Text(
                'CoinDesk • 2h',
                style: TextStyle(color: Color(balanceColor), fontSize: 10),
              ),
              Spacer()
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
