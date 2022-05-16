import 'row_api.dart';
class QueryResults{
  final Row results;
  //final List<String> resultsMap;

  QueryResults({
    required this.results,
    //required this.resultsMap,
  });

  factory QueryResults.fromJson(Map<String, dynamic> json){

    return QueryResults(
      results: Row.fromJson(json['queryResults']),
      //resultsMap: List<String>.from(json['queryResults']),
    );
  }
}

class QueryResultsList{
  final BBPlayer results;
  //final List<String> resultsMap;

  QueryResultsList({
    required this.results,
    //required this.resultsMap,
  });

  factory QueryResultsList.fromJson(Map<String, dynamic> json){

    return QueryResultsList(
      results: BBPlayer.fromJson(json['queryResults']),
      //resultsMap: List<String>.from(json['queryResults']),
    );
  }
}

