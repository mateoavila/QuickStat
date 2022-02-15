class HitterData {
  final String Avg;
  final String OBP;
  final String SLG;
  final String OPS;
  final String RBI;
  final String HR;
  final String BB;
  final String xBH;
  final String SO;
  final String TPA;
  final String BABIP;
  final String PPA;
  final String GOAO;
  final String TB;
  final String SB;
  final String IBB;
  final String R;
  final String ERA;

  HitterData({
    required this.Avg,
    required this.OBP,
    required this.SLG,
    required this.OPS,
    required this.RBI,
    required this.HR,
    required this.BB,
    required this.xBH,
    required this.SO,
    required this.TPA,
    required this.BABIP,
    required this.PPA,
    required this.GOAO,
    required this.TB,
    required this.SB,
    required this.IBB,
    required this.R,
    required this.ERA,
  });

  factory HitterData.fromJson(Map<String, dynamic> json) {
    // ignore: prefer_typing_uninitialized_variables
    return HitterData(
      Avg: json['avg'],
      OBP: json['obp'],
      SLG: json['slg'],
      OPS: json['ops'],
      RBI: json['rbi'],
      HR: json['hr'],
      BB: json['bb'],
      xBH: json['xbh'],
      SO: json['so'],
      TPA: json['tpa'],
      BABIP: json['babip'],
      PPA: json['ppa'],
      GOAO: json['go_ao'],
      TB: json['tb'],
      SB: json['sb'],
      IBB: json['ibb'],
      R: json['r'],

      ERA: json['era'],
    );
  }
}
