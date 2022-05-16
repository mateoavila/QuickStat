class PitcherData {
  final String ERA;
  final String whip;
  final String kbb;
  final String babip;
  final String hr9;
  final String h9;
  final String bb9;
  final String spct;
  final String pip;
  final String ppa;
  final String ip;
  final String wpct;
  final String gidp;
  final String sv;
  final String go_ao;
  final String g;

  PitcherData({
    required this.ERA,
    required this.whip,
    required this.kbb,
    required this.babip,
    required this.hr9,
    required this.h9,
    required this.bb9,
    required this.spct,
    required this.pip,
    required this.ppa,
    required this.ip,
    required this.wpct,
    required this.gidp,
    required this.sv,
    required this.go_ao,
    required this.g,
  });

  factory PitcherData.fromJson(Map<String, dynamic> json) {
    // ignore: prefer_typing_uninitialized_variables
    return PitcherData(
      ERA: json['era'],
      whip: json['whip'],
      kbb:  json['kbb'],
      babip: json['babip'],
      hr9: json['hr9'],
      h9: json['h9'],
      bb9: json['bb9'],
      spct: json['spct'],
      pip: json['pip'],
      ppa: json['ppa'],
      ip: json['ip'],
      wpct: json['wpct'],
      gidp: json['gidp_opp'],
      sv: json['sv'],
      go_ao: json['go_ao'],
      g: json['g'],
    );
  }
}
