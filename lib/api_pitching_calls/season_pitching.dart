import 'package:quickstat/api_pitching_calls/pitching_query_results.dart';

class seasonPitching{
  final PitchingQueryResults pitching;
  //final List<String> allMap;

  seasonPitching({
    required this.pitching,
    //required this.allMap,
  });

  factory seasonPitching.fromJson(Map<String, dynamic> json){

    return seasonPitching(
      pitching: PitchingQueryResults.fromJson(json['sport_pitching_tm']),
    );
  }
}