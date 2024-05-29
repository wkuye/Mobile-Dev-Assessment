import 'package:assessment_project/pages/BTC_Transaction_page.dart';
import 'package:assessment_project/pages/Tezos_Transaction_page.dart';
import 'package:flutter/material.dart';

import '../strings/constants.dart';

class Assets extends StatelessWidget {
  final Size size;
  const Assets({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: size.height / 3.2,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(color: Color(textFieldBackgroundColor)))),
        child: Column(
          children: [
    const Spacer(),
            const Row(
              children: [
                Text(
                  'My assets',
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
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BTCPAGE())),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(bitcoin),
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bitcoin'),
                        Text(
                          'BTC',
                          style: TextStyle(color: Color(balanceColor)),
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('₦24,500,00'),
                        Row(
                          children: [
                            Image.asset(arrow_right_upward),
                            const Text(
                              '1.76%',
                              style: TextStyle(color: Color(loginButtonColor)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(etherum),
                  ),
                  const Spacer(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ethereum'),
                      Text(
                        'ETH',
                        style: TextStyle(color: Color(balanceColor)),
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('₦4,500'),
                      Row(
                        children: [
                          Image.asset(arrow_left_downward),
                          const Text(
                            '6.76%',
                            style: TextStyle(color: Color(ethereumColor)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TezosTransactionPage())),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(tezos),
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tezos'),
                        Text(
                          'XTZ',
                          style: TextStyle(color: Color(balanceColor)),
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('₦4500'),
                        Row(
                          children: [
                            Image.asset(arrow_right_upward),
                            const Text(
                              '9.06%',
                              style: TextStyle(color: Color(loginButtonColor)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Spacer(flex: 3,)
          ],
        ),
      ),
    );
  }
}
