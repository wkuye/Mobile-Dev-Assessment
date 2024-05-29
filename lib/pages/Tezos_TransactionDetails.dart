import 'package:assessment_project/api/model/tezos_model.dart';
import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TezosTransactionDetails extends StatelessWidget {
  final Tezos tezos;
  const TezosTransactionDetails({super.key, required this.tezos});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    DateTime dateTime = DateTime.parse(tezos.time);

    // Format the DateTime object into the desired format
    String formattedDate = DateFormat('yyyy-MM-dd · HH:mm').format(dateTime);
    // Format the DateTime object

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Transaction details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hash',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Flexible(
                    child: Text(
                  '${tezos.hash}',
                  textAlign: TextAlign.end,
                ))
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Time',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '$formattedDate',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Level',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tezos.level}',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Reward',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tezos.reward}',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bonus',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tezos.bonus}',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fees',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tezos.fees}',
                )
              ],
            ),
            const Divider(),
            const Spacer(
              flex: 3,
            ),
            const Row(
              children: [
                Icon(Icons.info),
                Spacer(),
                Text(
                  'View on blockchain explorer',
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(timeColor),
                  size: 15,
                ),
              ],
            ),
            Spacer(
              flex: 18,
            )
          ],
        ),
      ),
    );
  }
}
