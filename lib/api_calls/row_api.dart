
// ignore_for_file: file_names

// ignore: camel_case_types
import 'package:batterup/api_calls/name_api.dart';

class Row{
  final Name row;

  Row({
    required this.row,
  });

  factory Row.fromJson(Map<String, dynamic> json){
    // ignore: prefer_typing_uninitialized_variables
    return Row(
      row: Name.fromJson(json['row']),
    );
  }
}