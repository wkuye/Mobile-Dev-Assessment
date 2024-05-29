import 'dart:convert';

import 'package:assessment_project/api/Request/currentBlock.dart';
import 'package:assessment_project/api/model/tezos_model.dart';

import 'package:assessment_project/pages/Tezos_TransactionDetails.dart';
import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TezosTransactionPage extends StatelessWidget {
  const TezosTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Tezos transactionss',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: FutureBuilder(
          future: HttpRequest().getAllTezosTransaction(),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              var response = jsonDecode(snaphot.data!.body);
              List<dynamic>? transaction = response;
              if (transaction != null) {
                List<Tezos> tezosTransactionList =
                    transaction.map((e) => Tezos.fromJson(e)).toList();
                return ListView.builder(
                    itemCount: tezosTransactionList.length,
                    itemBuilder: (context, index) {
                      final tezosTransaction = tezosTransactionList[index];
                      final String hash =
                          tezosTransaction.hash.substring(0, 30);
                      DateTime dateTime = DateTime.parse(tezosTransaction.time);

                      // Format the DateTime object into the desired format
                      String formattedDate =
                          DateFormat('yyyy-MM-dd · HH:mm').format(dateTime);
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TezosTransactionDetails(
                                      tezos: tezosTransaction,
                                    ))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: size.height / 22,
                              width: size.width,
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Text(
                                    '$hash....',
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(timeColor),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '$formattedDate',
                                style: const TextStyle(color: Color(timeColor)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(),
                            ),
                          ],
                        ),
                      );
                    });
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(circleColor),
                  backgroundColor: Color(colorCiricle2),
                ),
              );
            }
            return Container();
          }),
    );
  }
}
