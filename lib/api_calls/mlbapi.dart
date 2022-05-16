import 'dart:convert';

import 'package:quickstat/api_calls/query_results_api.dart';
import 'package:quickstat/api_calls/row_api.dart';
import 'package:http/http.dart' as http;
import '../playeradd.dart';
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

Future<String> getPositionApi(String name) async {
  String link = "http://lookup-service-prod.mlb.com/json/named.search_player_all.bam?sport_code=%27mlb%27&active_sw=%27Y%27&name_part=%27" + name + "%25%27";
  var response = await http.get(link);
  var body = response.body;

  SearchAll search = SearchAll.fromJson(jsonDecode(body));
  QueryResults results = search.all;
  Row row = results.results;
  Name player = row.row;

  print('position: ');
  print(player.position.toString());

  return player.position.toString();
}

void getListOfNameApi(String name) async {
  String link = "http://lookup-service-prod.mlb.com/json/named.search_player_all.bam?sport_code=%27mlb%27&active_sw=%27Y%27&name_part=%27" + name + "%25%27";
  var response = await http.get(link);

  var jsondata = jsonDecode(response.body);
  SearchAllList search = SearchAllList.fromJson(jsonDecode(response.body));
  QueryResultsList results = search.all;
  BBPlayer row = results.results;

  List<String> bbplayers = [];


  for(var u in jsondata){
    bbplayers.add(u);
    print(u);
  }

}