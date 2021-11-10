
// ignore_for_file: file_names

// ignore: camel_case_types
class Name{
  final String name;
  final String playerID;
  Name({
    required this.name,
    required this.playerID,
  });

  factory Name.fromJson(Map<String, dynamic> json){
    // ignore: prefer_typing_uninitialized_variables
    return Name(
      name: json['name_display_first_last'],
      playerID: json['player_id'],
    );
  }
}