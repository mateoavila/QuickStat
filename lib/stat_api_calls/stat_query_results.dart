
import 'package:quickstat/stat_api_calls/stat_row_api.dart';

class StatsQueryResults{
  final StatsRow results;
  //final List<String> resultsMap;

  StatsQueryResults({
    required this.results,
    //required this.resultsMap,
  });

  factory StatsQueryResults.fromJson(Map<String, dynamic> json){

    return StatsQueryResults(
      results: StatsRow.fromJson(json['queryResults']),
      //resultsMap: List<String>.from(json['queryResults']),
    );
  }
}