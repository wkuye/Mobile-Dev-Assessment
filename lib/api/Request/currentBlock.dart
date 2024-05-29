import 'dart:convert';

import 'package:assessment_project/utility/strings/constants.dart';
import 'package:http/http.dart' as http;

class HttpRequest {
  Future<dynamic> currentBlock() async {
    var response = await http.get(Uri.parse(currentBlockUrl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      print('null');
    }
  }

  Future<http.Response> getAllBTCTransaction(String hash) async {
    print('oooo $hash');
    var response = await http.get(Uri.parse('$getallTransactionUrl/$hash'));
    return response;
  }
    Future<http.Response> getAllTezosTransaction() async {

    var response = await http.get(Uri.parse('$tezosUrl'));
    return response;
  }
}
