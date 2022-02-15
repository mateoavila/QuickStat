
import 'package:quickstat/api_hitting_calls/hitting_row_api.dart';

class HittingQueryResults{
  final HittingRow results;
  //final List<String> resultsMap;

  HittingQueryResults({
    required this.results,
    //required this.resultsMap,
  });

  factory HittingQueryResults.fromJson(Map<String, dynamic> json){

    return HittingQueryResults(
      results: HittingRow.fromJson(json['queryResults']),
      //resultsMap: List<String>.from(json['queryResults']),
    );
  }
}