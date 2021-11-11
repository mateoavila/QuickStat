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