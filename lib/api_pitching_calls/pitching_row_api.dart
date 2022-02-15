import 'package:quickstat/api_pitching_calls/pitcherData.dart';

class PitchingRow{
  final PitcherData row;
  //final List<String> rowMap;

  PitchingRow({
    required this.row,
    //required this.rowMap,
  });

  factory PitchingRow.fromJson(Map<String, dynamic> json){

    return PitchingRow(
      row: PitcherData.fromJson(json['row']),
      //rowMap: List<String>.from(json['row']),
    );
  }
}