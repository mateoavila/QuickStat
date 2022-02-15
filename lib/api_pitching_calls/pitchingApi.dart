import 'dart:convert';
import 'package:quickstat/api_calls/mlbapi.dart';
import 'package:quickstat/api_pitching_calls/pitcherData.dart';
import 'package:quickstat/api_pitching_calls/pitching_query_results.dart';
import 'package:quickstat/api_pitching_calls/pitching_row_api.dart';
import 'season_pitching.dart';
import '../pitcher.dart';
import 'package:http/http.dart' as http;

Future<Pitcher> callPitchingApi(String name) async {
  String playerID = await getPIDApi(name);

  String link = "http://lookup-service-prod.mlb.com/json/named.sport_pitching_tm.bam?league_list_id=%27mlb%27&game_type=%27R%27&season=%272021%27&player_id=%27" + playerID + "%27";
  var response = await http.get(link);
  var body = response.body;

  seasonPitching pitching = seasonPitching.fromJson(jsonDecode(body));
  PitchingQueryResults results = pitching.pitching;
  PitchingRow row = results.results;
  PitcherData data = row.row;


  Pitcher tempPlayer = Pitcher(data.ERA);


  return tempPlayer;
}