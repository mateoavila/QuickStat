import 'data.dart';

class StatsRow{
  final Data statRow;
  //final List<String> rowMap;

  StatsRow({
    required this.statRow,
    //required this.rowMap,
  });

  factory StatsRow.fromJson(Map<String, dynamic> json){

    return StatsRow(
      statRow: Data.fromJson(json['row']),
    );
  }
}