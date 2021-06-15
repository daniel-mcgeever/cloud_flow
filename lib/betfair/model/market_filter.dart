part of swagger.api;

class MarketFilter {
  
  List<String> countryCodes = [];
  

  List<String> bettingTypes = [];
  //enum bettingTypesEnum {  ODDS,  LINE,  RANGE,  ASIAN_HANDICAP_DOUBLE_LINE,  ASIAN_HANDICAP_SINGLE_LINE,  };

  bool turnInPlayEnabled = null;
  

  List<String> marketTypes = [];
  

  List<String> venues = [];
  

  List<String> marketIds = [];
  

  List<String> eventTypeIds = [];
  

  List<String> eventIds = [];
  

  bool bspMarket = null;
  

  List<String> raceTypes = [];
  
  MarketFilter();

  @override
  String toString() {
    return 'MarketFilter[countryCodes=$countryCodes, bettingTypes=$bettingTypes, turnInPlayEnabled=$turnInPlayEnabled, marketTypes=$marketTypes, venues=$venues, marketIds=$marketIds, eventTypeIds=$eventTypeIds, eventIds=$eventIds, bspMarket=$bspMarket, raceTypes=$raceTypes, ]';
  }

  MarketFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countryCodes =
        (json['countryCodes'] as List).map((item) => item as String).toList()
    ;
    bettingTypes =
        (json['bettingTypes'] as List).map((item) => item as String).toList()
    ;
    turnInPlayEnabled =
        json['turnInPlayEnabled']
    ;
    marketTypes =
        (json['marketTypes'] as List).map((item) => item as String).toList()
    ;
    venues =
        (json['venues'] as List).map((item) => item as String).toList()
    ;
    marketIds =
        (json['marketIds'] as List).map((item) => item as String).toList()
    ;
    eventTypeIds =
        (json['eventTypeIds'] as List).map((item) => item as String).toList()
    ;
    eventIds =
        (json['eventIds'] as List).map((item) => item as String).toList()
    ;
    bspMarket =
        json['bspMarket']
    ;
    raceTypes =
        (json['raceTypes'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCodes': countryCodes,
      'bettingTypes': bettingTypes,
      'turnInPlayEnabled': turnInPlayEnabled,
      'marketTypes': marketTypes,
      'venues': venues,
      'marketIds': marketIds,
      'eventTypeIds': eventTypeIds,
      'eventIds': eventIds,
      'bspMarket': bspMarket,
      'raceTypes': raceTypes
     };
  }

  static List<MarketFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketFilter>() : json.map((value) => new MarketFilter.fromJson(value)).toList();
  }

  static Map<String, MarketFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketFilter.fromJson(value));
    }
    return map;
  }
}

