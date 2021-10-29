
import 'package:batterup/api_calls/row_api.dart';

class QueryResults{
  final Row results;

  QueryResults({
    required this.results,
  });

  factory QueryResults.fromJson(Map<String, dynamic> json){

    // ignore: prefer_typing_uninitialized_variables
    return QueryResults(
      results: Row.fromJson(json['queryResults']),
    );
  }
}