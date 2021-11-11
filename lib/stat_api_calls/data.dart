
class Data{
  final String Avg;
  final String OBP;
  final String SLG;
  final String OPS;
  Data({
    required this.Avg,
    required this.OBP,
    required this.SLG,
    required this.OPS,
  });

  factory Data.fromJson(Map<String, dynamic> json){
    // ignore: prefer_typing_uninitialized_variables
    return Data(
      Avg: json['avg'],
      OBP: json['obp'],
      SLG: json['slg'],
      OPS: json['ops'],
    );
  }
}