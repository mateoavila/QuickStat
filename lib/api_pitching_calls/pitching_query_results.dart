
import 'package:quickstat/api_pitching_calls/pitching_row_api.dart';

class PitchingQueryResults{
  final PitchingRow results;
  //final List<String> resultsMap;

  PitchingQueryResults({
    required this.results,
    //required this.resultsMap,
  });

  factory PitchingQueryResults.fromJson(Map<String, dynamic> json){

    return PitchingQueryResults(
      results: PitchingRow.fromJson(json['queryResults']),
      //resultsMap: List<String>.from(json['queryResults']),
    );
  }
}