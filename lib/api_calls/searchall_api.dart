
import 'package:batterup/api_calls/queryResults_api.dart';

class SearchAll{
  final QueryResults all;

  SearchAll({
    required this.all,
  });

  factory SearchAll.fromJson(Map<String, dynamic> json){

    return SearchAll(
      all: QueryResults.fromJson(json['search_player_all']),
    );
  }
}