
import '../Enum/ParticipationStatus.dart';

import 'EventDto.dart';
import 'TeamMemberDto.dart';

class ParticipationDto{

  String? id;
  EventDto? eventDto;
  TeamMemberDto? teamMemberDto;
  double? individualPrice;
  String? paymentId;
  ParticipationStatus? participationStatus;

  ParticipationDto({this.id,
    this.eventDto,
    this.teamMemberDto,
    this.individualPrice,
    this.participationStatus,
    this.paymentId});


  factory ParticipationDto.fromJson(Map<String, dynamic> json){
    return ParticipationDto(
        id: json["id"],
        eventDto: json["eventDto"] == null ? null : EventDto.fromJson(json["eventDto"]),
        teamMemberDto: TeamMemberDto.fromJson(json["teamMemberDto"]),
        paymentId: json['paymentId'],
        individualPrice: json["eventName"],
        participationStatus: json["participationStatus"] ==null ? null : ParticipationStatus.values.byName(json["participationStatus"])

    );
  }

  ParticipationStatus? getParticipationStatusFromString(String statusAsString) {
    for (ParticipationStatus element in ParticipationStatus.values) {
      if (element.toString() == statusAsString) {
        return element;
      }
    }
    return null;
  }
// static List<Map<String, dynamic>> toJsonList(List<ParticipationDto> list) {
//   return list.map((e) => e.toJson()).toList();
// }
}