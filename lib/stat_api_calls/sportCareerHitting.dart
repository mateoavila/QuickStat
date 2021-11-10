
import 'package:batterup/api_calls/query_results_api.dart';

class Careerhitting{
  final QueryResults all;
  //final List<String> allMap;

  SearchAll({
    required this.all,
    //required this.allMap,
  });

  factory SearchAll.fromJson(Map<String, dynamic> json){

    return SearchAll(
      all: QueryResults.fromJson(json['search_player_all']),
      //allMap: List<String>.from(json['search_player_all']),
    );
  }
}