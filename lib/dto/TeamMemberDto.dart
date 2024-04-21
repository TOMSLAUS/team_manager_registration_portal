import 'package:team_manager_registration/Enum/ParticipationStatus.dart';

class TeamMemberDto{
  String? id;
  bool? isOwner;
  bool? isPlayer;
  bool? isManager;
  String? teamName;
  double? wallet;
  String? teamId;
  String? name;
  String? lastName;
  String? fullName;
  String? phoneNumber;
  String? countryDialCode;
  String? countryCode;
  bool selected;
  int? practicesParticipated;
  int? gamesParticipated;
  int? practicesInTeam;
  int? gamesInTeam;
  bool? canManage;
  bool? canAdmin;
  String? domainUserid;
  String? domainUserImageExt;
  String? firebaseId;
  String? invitationCode;
  ParticipationStatus? participationStatus;


  TeamMemberDto({ this.id,  this.isOwner,  this.isPlayer, this.isManager,
    this.teamName, this.teamId, this.name, this.lastName, this.fullName,
    this.selected = false, this.phoneNumber,
    this.gamesInTeam, this.gamesParticipated, this.practicesInTeam,
    this.practicesParticipated, this.wallet, this.canManage, this.domainUserid,
    this.domainUserImageExt, this.firebaseId, this.countryDialCode,
    this.countryCode, this.canAdmin, this.invitationCode, this.participationStatus});

  factory TeamMemberDto.fromJson(Map json) {
    return TeamMemberDto(
        id: json['id'],
        isOwner: json['isOwner'],
        isPlayer: json['isPlayer'],
        isManager: json['isManager'],
        teamName: json['teamName'],
        teamId: json['teamId'],
        name: json['name'],
        lastName: json['lastName'],
        phoneNumber: json['phoneNumber'],
        gamesInTeam: json['gamesInTeam'],
        gamesParticipated: json['gamesParticipated'],
        practicesInTeam: json['practicesInTeam'],
        practicesParticipated: json['practicesParticipated'],
        wallet: json['wallet'],
        canManage: json["canManage"],
        canAdmin: json["canAdmin"],
        domainUserid: json['domainUserId'],
        domainUserImageExt: json['domainUserImageExt'],
        firebaseId: json['firebaseId'],
        countryDialCode: json['countryDialCode'],
        countryCode: json['countryCode'],
        invitationCode: json['invitationCode'],
        participationStatus: json["participationStatus"] == null ? null : ParticipationStatus.values.byName(json["participationStatus"])
    );
  }


  Map<String, dynamic> toJson() => {
    'id': id,
    'isOwner': isOwner,
    'isPlayer': isPlayer,
    'isManager': isManager,
    'teamName': teamName,
    'teamId': teamId,
    'name': name,
    'lastName': lastName,
    'phoneNumber': phoneNumber,
    'wallet': wallet,
    'countryDialCode': countryDialCode,
    'countryCode': countryCode,
    'domainUserid': domainUserid
  };

  static List<TeamMemberDto> fromJsonList(List json) {
    return json.map((e) => TeamMemberDto.fromJson(e as Map)).toList();
  }

}