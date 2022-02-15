import 'package:quickstat/api_hitting_calls/hitting_query_results.dart';

class seasonHitting{
  final HittingQueryResults hitting;
  //final List<String> allMap;

  seasonHitting({
    required this.hitting,
    //required this.allMap,
  });

  factory seasonHitting.fromJson(Map<String, dynamic> json){

    return seasonHitting(
      hitting: HittingQueryResults.fromJson(json['sport_hitting_tm']),
    );
  }
}