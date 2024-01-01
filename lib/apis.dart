import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:number_facts/model%20class/numberfactresp.dart';

Future<number_fact_resp> getNumberFact({required String number}) async {
  final _response = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String,dynamic>;
  final _data = number_fact_resp.fromJson(_bodyAsJson);
  return _data;
}