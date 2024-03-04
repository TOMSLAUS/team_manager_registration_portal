
import '../i18n/strings.g.dart';

enum EventTypes {
  PRACTICE,
  GAME,
  OTHER;

String get label {
  switch (this) {
    case EventTypes.PRACTICE:
      return t.enums.EventTypes.PRACTICE;
    case EventTypes.GAME:
      return t.enums.EventTypes.GAME;
    case EventTypes.OTHER:
      return t.enums.EventTypes.Other;
  }
}

static EventTypes? fromString(String string) {
for (EventTypes enumVariant in EventTypes.values) {
string = string.toUpperCase();
      if (enumVariant.name == string) return enumVariant;
}
return null;
}
}

extension ParseToString on EventTypes {
  String toShortString() {
    return toString().split('.').last;
  }
}
