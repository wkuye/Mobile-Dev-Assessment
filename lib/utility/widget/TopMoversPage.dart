import 'package:assessment_project/utility/strings/constants.dart';
import 'package:assessment_project/utility/widget/TopMoversWidgit.dart';
import 'package:flutter/material.dart';

class TopMoversPage extends StatelessWidget {
  final Size size;
  const TopMoversPage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
            height: size.height / 3.5,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color(textFieldBackgroundColor)))),
            child: Column(children: [
           
              Row(
                children: [
                  Text(
                    "Today's Top Movers",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'see all',
                    style: TextStyle(
                        color: Color(loginButtonColor),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(),
              Expanded(
                flex: 7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopMoverContainer(
                        size: size,
                        blockpicture: etherum,
                        blockName: 'Ethereum',
                        blockIcon: arrow_left_downward,
                        blockPercent: '1.76',
                        color: ethereumColor),
                        SizedBox(width: 10,),
                         TopMoverContainer(size: size, blockpicture: bitcoin, blockName: 'Bitcoin', blockIcon: arrow_right_upward, blockPercent: '1.76', color: loginButtonColor),
                         SizedBox(width: 10,),
                          TopMoverContainer(size: size, blockpicture: tezos, blockName: 'Tezos', blockIcon: arrow_right_upward, blockPercent: '1.76', color: loginButtonColor)
                  ],
                ),
              ),
                Spacer()
            ])));
  }
}
