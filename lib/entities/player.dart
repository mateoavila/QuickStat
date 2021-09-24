class Player{
  String name;
  String atBat;

  Player(this.name, this.atBat);

  Player.fromJson(Map<String, dynamic>json){
        name = json['name'];
        atBat = json['atBat'];
  }
}
