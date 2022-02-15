class PitcherData {
  final String ERA;


  PitcherData({
    required this.ERA,
  });

  factory PitcherData.fromJson(Map<String, dynamic> json) {
    // ignore: prefer_typing_uninitialized_variables
    return PitcherData(
      ERA: json['era']
    );
  }
}
