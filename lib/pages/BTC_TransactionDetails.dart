import 'package:assessment_project/api/model/tx_model.dart';
import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionDetails extends StatelessWidget {
  final tx_Model tx;
  final int height;
  const TransactionDetails({super.key, required this.tx, required this.height});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(tx.time * 1000);

    // Define the desired format
    DateFormat dateFormat = DateFormat('yyyy-MM-dd · HH:mm');

    // Format the DateTime object
    String formattedDate = dateFormat.format(dateTime);
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
                  '${tx.hash}',
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
                  'Size',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tx.size}',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Block index',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '${tx.block_index}',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Height',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '$height',
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Received time',
                  style: TextStyle(color: Color(timeColor)),
                ),
                const Spacer(),
                Text(
                  '$formattedDate',
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
