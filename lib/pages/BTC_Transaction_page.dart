// ignore: file_names
import 'dart:convert';

import 'package:assessment_project/api/Request/currentBlock.dart';
import 'package:assessment_project/pages/BTC_TransactionDetails.dart';
import 'package:assessment_project/utility/strings/constants.dart';
import 'package:intl/intl.dart';
import 'package:assessment_project/api/model/tx_model.dart';

import 'package:flutter/material.dart';

class BTCPAGE extends StatefulWidget {
  const BTCPAGE({super.key});

  @override
  State<BTCPAGE> createState() => _BTCPAGEState();
}

class _BTCPAGEState extends State<BTCPAGE> {
  String hash = '';
  int height = 0;
  @override
  void initState() {
    // TODO: implement initState
    HttpRequest().currentBlock().then((value) {
      setState(() {
        hash = value['hash'];
        height = value['height'];
      });
      print(hash);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BTC transactions',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: FutureBuilder(
          future: HttpRequest().getAllBTCTransaction(hash),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              var response = jsonDecode(snaphot.data!.body);
              List<dynamic>? transaction = response['tx'];
              if (transaction != null) {
                List<tx_Model> bitcoinTransactionList =
                    transaction.map((e) => tx_Model.fromJson(e)).toList();
                return ListView.builder(
                    itemCount: bitcoinTransactionList.length,
                    itemBuilder: (context, index) {
                      final bitcoinTransaction = bitcoinTransactionList[index];
                      final String hash =
                          bitcoinTransaction.hash.substring(0, 35);
                      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                          bitcoinTransaction.time * 1000);

                      // Define the desired format
                      DateFormat dateFormat = DateFormat('yyyy-MM-dd · HH:mm');

                      // Format the DateTime object
                      String formattedDate = dateFormat.format(dateTime);
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TransactionDetails(
                                      tx: bitcoinTransaction,
                                      height: height,
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
           if (snaphot.connectionState==ConnectionState.waiting) {
             return const Center(
                child: CircularProgressIndicator(
                  color: Color(circleColor),
                  backgroundColor: Color(colorCiricle2),
                ),
              );
           }
            } else{
           
                   return           const Center(
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
