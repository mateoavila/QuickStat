import 'dart:convert';
import 'package:quickstat/api_calls/mlbapi.dart';
import 'package:quickstat/api_hitting_calls/hitting_query_results.dart';
import '../hittter.dart';
import 'hitterData.dart';
import 'hitting_row_api.dart';
import 'season_hitting.dart';
import 'package:http/http.dart' as http;

Future<Hitter> callHittingApi(String name) async {
  String playerID = await getPIDApi(name);

    String link = "http://lookup-service-prod.mlb.com/json/named.sport_hitting_tm.bam?league_list_id=%27mlb%27&game_type=%27R%27&season=%272021%27&player_id=%27" + playerID +"%27";
    var response = await http.get(link);
    var body = response.body;

    seasonHitting hitting = seasonHitting.fromJson(jsonDecode(body));
    HittingQueryResults results = hitting.hitting;
    HittingRow row = results.results;
    HitterData data = row.statRow;


    Hitter tempPlayer = Hitter(data.Avg, data.OBP, data.SLG, data.OPS, data.RBI, data.HR, data.BB, data.xBH, data.SO, data.TPA, data.BABIP, data.PPA, data.GOAO, data.TB, data.SB, data.IBB, data.R);


  return tempPlayer;
}
