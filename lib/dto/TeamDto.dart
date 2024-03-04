import 'package:team_manager_registration/Enum/Sports.dart';

import 'TeamMemberDto.dart';

class TeamDto{
  String? id;
  String? teamName;
  double? wallet;
  //String? season;
  Sport? sport;
  List<TeamMemberDto>? teamMembers;
  String? seasonName;
  String? invitationLink;


  TeamDto({this.id, this.teamName, this.teamMembers, this.wallet, this.seasonName, this.sport, this.invitationLink});

  factory TeamDto.fromJson(Map json) {

    return TeamDto(
      id: json['id'],
      teamName: json['teamName'],
      wallet: json['wallet'],
      seasonName:  json['seasonName'],
      teamMembers: List<TeamMemberDto>.from(
         json['teamMembers'].map((model) => TeamMemberDto.fromJson(model))),
      sport: json['sport'] != null ? Sport.getSportFromString(json['sport']) : null,
      invitationLink: json["invitationLink"]
    );
  }


  Map<String, dynamic> toJson() => {
    'id': id,
    'teamName': teamName,
    'sport': sport,
    'wallet': wallet,
    "teamMembers": teamMembers,
    "sport":  sport != null ? Sport.sportToString(sport!) : null
  };


  static List<TeamDto> fromJsonList(List json) {
    return json.map((e) => TeamDto.fromJson(e as Map)).toList();
  }
}