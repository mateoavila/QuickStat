import 'package:batterup/stat_api_calls/stat_query_results.dart';

class Careerhitting{
  final StatsQueryResults hitting;
  //final List<String> allMap;

  Careerhitting({
    required this.hitting,
    //required this.allMap,
  });

  factory Careerhitting.fromJson(Map<String, dynamic> json){

    return Careerhitting(
      hitting: StatsQueryResults.fromJson(json['sport_career_hitting']),
    );
  }
}