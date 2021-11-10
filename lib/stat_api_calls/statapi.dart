
import 'package:batterup/api_calls/query_results_api.dart';
import 'package:batterup/api_calls/row_api.dart';
import 'package:http/http.dart' as http;
import '../api_calls/mlbapi.dart';

Future<String> callStatApi(String name) async {
  String playerID = await getPIDApi(name);
  String link = "http://lookup-service-prod.mlb.com/json/named.sport_career_hitting.bam?league_list_id=%27mlb%27&game_type=%27R%27&player_id=%27" + playerID + "%27";
  var response = await http.get(link);

  var body = response.body;

  

  return player.name.toString();
}
