import 'hitterData.dart';

class HittingRow{
  final HitterData statRow;
  //final List<String> rowMap;

  HittingRow({
    required this.statRow,
    //required this.rowMap,
  });

  factory HittingRow.fromJson(Map<String, dynamic> json){

    return HittingRow(
      statRow: HitterData.fromJson(json['row']),
    );
  }
}