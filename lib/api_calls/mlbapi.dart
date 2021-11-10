import 'dart:convert';

import 'package:batterup/api_calls/query_results_api.dart';
import 'package:batterup/api_calls/row_api.dart';
import 'package:http/http.dart' as http;
import 'name_api.dart';
import 'searchall_api.dart';

Future<String> getNameApi(String name) async {
  String link = "http://lookup-service-prod.mlb.com/json/named.search_player_all.bam?sport_code=%27mlb%27&active_sw=%27Y%27&name_part=%27" + name + "%25%27";
  var response = await http.get(link);

  var body = response.body;

  SearchAll search = SearchAll.fromJson(jsonDecode(body));
  QueryResults results = search.all;
  Row row = results.results;
  Name player = row.row;

  print('players name: ');
  print(player.name.toString());

  return player.name.toString();
}

Future<String> getPIDApi(String name) async {
  String link = "http://lookup-service-prod.mlb.com/json/named.search_player_all.bam?sport_code=%27mlb%27&active_sw=%27Y%27&name_part=%27" + name + "%25%27";
  var response = await http.get(link);

  var body = response.body;

  SearchAll search = SearchAll.fromJson(jsonDecode(body));
  QueryResults results = search.all;
  Row row = results.results;
  Name player = row.row;

  print('player id: ');
  print(player.playerID.toString());

  return player.playerID.toString();
}
