import 'package:flutter/material.dart';

import '../strings/constants.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Text(
                  'My balance',
                  style: TextStyle(color: Color(balanceColor), fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.visibility,
                  color: Color(balanceColor),
                  size: 15,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '₦',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '5,000.00',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '.00',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }
}
