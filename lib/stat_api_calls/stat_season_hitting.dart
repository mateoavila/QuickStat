import 'package:quickstat/stat_api_calls/stat_query_results.dart';

class seasonHitting{
  final StatsQueryResults hitting;
  //final List<String> allMap;

  seasonHitting({
    required this.hitting,
    //required this.allMap,
  });

  factory seasonHitting.fromJson(Map<String, dynamic> json){

    return seasonHitting(
      hitting: StatsQueryResults.fromJson(json['sport_hitting_tm']),
    );
  }
}