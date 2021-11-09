// To parse this JSON data, do
//
//     final player = playerFromJson(jsonString);

import 'dart:convert';

Player playerFromJson(String str) => Player.fromJson(json.decode(str));

String playerToJson(Player data) => json.encode(data.toJson());

class Player {
  Player({
    required this.searchPlayerAll,
  });

  SearchPlayerAll searchPlayerAll;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        searchPlayerAll: SearchPlayerAll.fromJson(json["search_player_all"]),
      );

  Map<String, dynamic> toJson() => {
        "search_player_all": searchPlayerAll.toJson(),
      };
}

class SearchPlayerAll {
  SearchPlayerAll({
    required this.copyRight,
    required this.queryResults,
  });

  String copyRight;
  QueryResults queryResults;

  factory SearchPlayerAll.fromJson(Map<String, dynamic> json) =>
      SearchPlayerAll(
        copyRight: json["copyRight"],
        queryResults: QueryResults.fromJson(json["queryResults"]),
      );

  Map<String, dynamic> toJson() => {
        "copyRight": copyRight,
        "queryResults": queryResults.toJson(),
      };
}

class QueryResults {
  QueryResults({
    required this.created,
    required this.totalSize,
    required this.row,
  });

  String created;
  String totalSize;
  List<Row> row;

  factory QueryResults.fromJson(Map<String, dynamic> json) => QueryResults(
        created: json["created"],
        totalSize: json["totalSize"],
        row: List<Row>.from(json["row"].map((x) => Row.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "created": created,
        "totalSize": totalSize,
        "row": List<dynamic>.from(row.map((x) => x.toJson())),
      };
}

class Row {
  Row({
    required this.position,
    required this.birthCountry,
    required this.weight,
    required this.birthState,
    required this.nameDisplayFirstLast,
    required this.college,
    required this.heightInches,
    required this.nameDisplayRoster,
    required this.sportCode,
    required this.bats,
    required this.nameFirst,
    required this.teamCode,
    required this.birthCity,
    required this.heightFeet,
    required this.proDebutDate,
    required this.teamFull,
    required this.teamAbbrev,
    required this.birthDate,
    required this.throws,
    required this.league,
    required this.nameDisplayLastFirst,
    required this.positionId,
    required this.highSchool,
    required this.nameUse,
    required this.playerId,
    required this.nameLast,
    required this.teamId,
    required this.serviceYears,
    required this.activeSw,
  });

  String position;
  String birthCountry;
  String weight;
  String birthState;
  String nameDisplayFirstLast;
  String college;
  String heightInches;
  String nameDisplayRoster;
  String sportCode;
  String bats;
  String nameFirst;
  String teamCode;
  String birthCity;
  String heightFeet;
  String proDebutDate;
  String teamFull;
  String teamAbbrev;
  String birthDate;
  String throws;
  String league;
  String nameDisplayLastFirst;
  String positionId;
  String highSchool;
  String nameUse;
  String playerId;
  String nameLast;
  String teamId;
  String serviceYears;
  String activeSw;

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        position: json["position"],
        birthCountry: json["birth_country"],
        weight: json["weight"],
        birthState: json["birth_state"],
        nameDisplayFirstLast: json["name_display_first_last"],
        college: json["college"],
        heightInches: json["height_inches"],
        nameDisplayRoster: json["name_display_roster"],
        sportCode: json["sport_code"],
        bats: json["bats"],
        nameFirst: json["name_first"],
        teamCode: json["team_code"],
        birthCity: json["birth_city"],
        heightFeet: json["height_feet"],
        proDebutDate: (json["pro_debut_date"]),
        teamFull: json["team_full"],
        teamAbbrev: json["team_abbrev"],
        birthDate: (json["birth_date"]),
        throws: json["throws"],
        league: json["league"],
        nameDisplayLastFirst: json["name_display_last_first"],
        positionId: json["position_id"],
        highSchool: json["high_school"],
        nameUse: json["name_use"],
        playerId: json["player_id"],
        nameLast: json["name_last"],
        teamId: json["team_id"],
        serviceYears: json["service_years"],
        activeSw: json["active_sw"],
      );

  Map<String, dynamic> toJson() => {
        "position": position,
        "birth_country": birthCountry,
        "weight": weight,
        "birth_state": birthState,
        "name_display_first_last": nameDisplayFirstLast,
        "college": college,
        "height_inches": heightInches,
        "name_display_roster": nameDisplayRoster,
        "sport_code": sportCode,
        "bats": bats,
        "name_first": nameFirst,
        "team_code": teamCode,
        "birth_city": birthCity,
        "height_feet": heightFeet,
        "pro_debut_date": proDebutDate,
        "team_full": teamFull,
        "team_abbrev": teamAbbrev,
        "birth_date": birthDate,
        "throws": throws,
        "league": league,
        "name_display_last_first": nameDisplayLastFirst,
        "position_id": positionId,
        "high_school": highSchool,
        "name_use": nameUse,
        "player_id": playerId,
        "name_last": nameLast,
        "team_id": teamId,
        "service_years": serviceYears,
        "active_sw": activeSw,
      };
}
