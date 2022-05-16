
import 'query_results_api.dart';
class SearchAll{
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

class SearchAllList{
  final QueryResultsList all;
  //final List<String> allMap;

  SearchAllList({
    required this.all,
    //required this.allMap,
  });

  factory SearchAllList.fromJson(Map<String, dynamic> json){

    return SearchAllList(
      all: QueryResultsList.fromJson(json['search_player_all']),
      //allMap: List<String>.from(json['search_player_all']),
    );
  }
}

