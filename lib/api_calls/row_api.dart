
// ignore_for_file: file_names

// ignore: camel_case_types
import 'package:batterup/api_calls/name_api.dart';

class Row{
  final Name row;
  //final List<String> rowMap;

  Row({
    required this.row,
    //required this.rowMap,
  });

  factory Row.fromJson(Map<String, dynamic> json){

    return Row(
      row: Name.fromJson(json['row']),
      //rowMap: List<String>.from(json['row']),
    );
  }
}