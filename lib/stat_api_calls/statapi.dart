import 'dart:convert';
import 'package:quickstat/api_calls/mlbapi.dart';
import 'package:quickstat/stat_api_calls/stat_query_results.dart';
import '../player.dart';
import 'data.dart';
import 'stat_row_api.dart';
import 'stat_season_hitting.dart';
import 'package:http/http.dart' as http;

Future<Player> callStatApi(String name) async {
  String playerID = await getPIDApi(name);
  String link = "http://lookup-service-prod.mlb.com/json/named.sport_hitting_tm.bam?league_list_id=%27mlb%27&game_type=%27R%27&season=%272021%27&player_id=%27" + playerID +"%27";
  var response = await http.get(link);
  var body = response.body;

  seasonHitting hitting = seasonHitting.fromJson(jsonDecode(body));
  StatsQueryResults results = hitting.hitting;
  StatsRow row = results.results;
  Data data = row.statRow;


  Player tempPlayer = Player(data.Avg, data.OBP, data.SLG, data.OPS, data.RBI, data.HR, data.BB, data.xBH, data.SO, data.TPA, data.BABIP, data.PPA, data.GOAO, data.TB, data.SB, data.IBB, data.R);

  return tempPlayer;
}
