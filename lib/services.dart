// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'players.dart';
import 'dart:convert';

class Services {
  static Future<List<Player>> getPlayers() async {
    List<Player> playas = [];

    try {
      String url = 'http://lookup-service-prod.mlb.com/json/named.search_player_all.bam?sport_code=%27mlb%27&active_sw=%27Y%27&name_part=%27Smith%25%27';
      Response response = await http.get(url);
      if (200 == response.statusCode) {
        print("good response");
        var players = jsonDecode(response.body);
        players.forEach((element) {
          print("here!!!!");

          Map obj = element;

          Map searchPlayerAll = obj['search_player_all'];
          Map queryResults = searchPlayerAll['queryResults'];
          Map row = queryResults['row'];
          row.forEach((key, value) {
            String nameDisplayFirstLast = row['name_display_first_last'];
            print(nameDisplayFirstLast);
          });
        });



        return playas;
      } else {
        print("Bad response  NOT 200");
        return playas;
      }
     } catch (e) {
       print("error caught: $e");
       return playas;
     }
  }
}
