
class Name{
  final String name;
  final String playerID;
  final String position;
  Name({
    required this.name,
    required this.playerID,
    required this.position,
  });

  factory Name.fromJson(Map<String, dynamic> json){
    // ignore: prefer_typing_uninitialized_variables
    try{
      return Name(
        name: json['name_display_first_last'],
        playerID: json['player_id'],
        position: json['position_id']
      );
    }catch(e){
      return Name(
        name: 'error',
        playerID: 'DNE',
        position: 'No Position'
      );
    }

  }
}