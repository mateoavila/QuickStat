import 'dart:convert';
import 'package:batterup/api_calls/mlbapi.dart';
import 'package:batterup/stat_api_calls/stat_query_results.dart';
import '../player.dart';
import 'data.dart';
import 'stat_row_api.dart';
import 'stat_career_hitting.dart';
import 'package:http/http.dart' as http;

Future<Player> callStatApi(String name) async {
  String playerID = await getPIDApi(name);
  print(playerID);
  String link = "http://lookup-service-prod.mlb.com/json/named.sport_career_hitting.bam?league_list_id=%27mlb%27&game_type=%27R%27&player_id=%27" + playerID + "%27";
  var response = await http.get(link);
  var body = response.body;

  Careerhitting careerHitting = Careerhitting.fromJson(jsonDecode(body));
  StatsQueryResults results = careerHitting.hitting;
  StatsRow row = results.results;
  Data data = row.statRow;

  print(data.Avg);

  Player tempPlayer = Player(data.Avg, data.OBP, data.SLG, data.OPS);

  return tempPlayer;
}
