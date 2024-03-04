import '../i18n/strings.g.dart';

enum Sport{
  ICEHOCKEY,
  FOOTBALL,
  FLOORBALL,
  BASKETBALL,
  HANDBALL,
  TENNIS,
  VOLLEYBALL,
  RUGBY,
  OTHER;

String get label {
  switch (this) {
    case Sport.ICEHOCKEY:
      return t.enums.Sports.ICEHOCKEY;
    case Sport.FOOTBALL:
      return t.enums.Sports.FOOTBALL;
    case Sport.FLOORBALL:
      return t.enums.Sports.FLOORBALL;
    case Sport.BASKETBALL:
      return t.enums.Sports.BASKETBALL;
    case Sport.HANDBALL:
      return t.enums.Sports.HANDBALL;
    case Sport.TENNIS:
      return t.enums.Sports.TENNIS;
    case Sport.VOLLEYBALL:
      return t.enums.Sports.VOLLEYBALL;
    case Sport.RUGBY:
      return t.enums.Sports.RUGBY;
    case Sport.OTHER:
      return t.enums.Sports.OTHER;
  }
}

static String sportToString(Sport str) {

  for (Sport element in Sport.values) {
    if (element == str) {
      return str.toString().split(".")[1];
    }
  }
  return "";
}

static Sport? getSportFromString(String str) {
  for (Sport element in Sport.values) {
    if (element.toString() == str) {
      return element;
    }
  }
  return null;
}
}