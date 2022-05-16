import 'package:quickstat/api_calls/name_api.dart';

class Row {
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

class BBPlayer{
  final String name;

  BBPlayer({
    required this.name,

  });

  factory BBPlayer.fromJson(Map<String, dynamic> json){
    // ignore: prefer_typing_uninitialized_variables
    try{
      return BBPlayer(
          name: json['name_display_first_last'],

      );
    }catch(e){
      return BBPlayer(
          name: 'error',
      );
    }
  }
}