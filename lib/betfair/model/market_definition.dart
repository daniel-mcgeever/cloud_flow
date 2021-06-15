part of swagger.api;

class MarketDefinition {
  
  String venue = null;
  

  String raceType = null;
  

  DateTime settledTime = null;
  

  String timezone = null;
  

  double eachWayDivisor = null;
  
/* The market regulators. */
  List<String> regulators = [];
  

  String marketType = null;
  

  double marketBaseRate = null;
  

  int numberOfWinners = null;
  

  String countryCode = null;
  
/* For Handicap and Line markets, the maximum value for the outcome, in market units for this market (eg 100 runs). */
  double lineMaxUnit = null;
  

  bool inPlay = null;
  

  int betDelay = null;
  

  bool bspMarket = null;
  

  String bettingType = null;
  //enum bettingTypeEnum {  ODDS,  LINE,  RANGE,  ASIAN_HANDICAP_DOUBLE_LINE,  ASIAN_HANDICAP_SINGLE_LINE,  };

  int numberOfActiveRunners = null;
  
/* For Handicap and Line markets, the minimum value for the outcome, in market units for this market (eg 0 runs). */
  double lineMinUnit = null;
  

  String eventId = null;
  

  bool crossMatching = null;
  

  bool runnersVoidable = null;
  

  bool turnInPlayEnabled = null;
  
/* Definition of the price ladder type and any related data. */
  PriceLadderDefinition priceLadderDefinition = null;
  
/* Definition of a markets key line selection (for valid markets), comprising the selectionId and handicap of the team it is applied to. */
  KeyLineDefinition keyLineDefinition = null;
  

  DateTime suspendTime = null;
  

  bool discountAllowed = null;
  

  bool persistenceEnabled = null;
  

  List<RunnerDefinition> runners = [];
  

  int version = null;
  
/* The Event Type the market is contained within. */
  String eventTypeId = null;
  

  bool complete = null;
  

  DateTime openDate = null;
  

  DateTime marketTime = null;
  

  bool bspReconciled = null;
  
/* For Handicap and Line markets, the lines available on this market will be between the range of lineMinUnit and lineMaxUnit, in increments of the lineInterval value. e.g. If unit is runs, lineMinUnit=10, lineMaxUnit=20 and lineInterval=0.5, then valid lines include 10, 10.5, 11, 11.5 up to 20 runs. */
  double lineInterval = null;
  

  String status = null;
  //enum statusEnum {  INACTIVE,  OPEN,  SUSPENDED,  CLOSED,  };
  MarketDefinition();

  @override
  String toString() {
    return 'MarketDefinition[venue=$venue, raceType=$raceType, settledTime=$settledTime, timezone=$timezone, eachWayDivisor=$eachWayDivisor, regulators=$regulators, marketType=$marketType, marketBaseRate=$marketBaseRate, numberOfWinners=$numberOfWinners, countryCode=$countryCode, lineMaxUnit=$lineMaxUnit, inPlay=$inPlay, betDelay=$betDelay, bspMarket=$bspMarket, bettingType=$bettingType, numberOfActiveRunners=$numberOfActiveRunners, lineMinUnit=$lineMinUnit, eventId=$eventId, crossMatching=$crossMatching, runnersVoidable=$runnersVoidable, turnInPlayEnabled=$turnInPlayEnabled, priceLadderDefinition=$priceLadderDefinition, keyLineDefinition=$keyLineDefinition, suspendTime=$suspendTime, discountAllowed=$discountAllowed, persistenceEnabled=$persistenceEnabled, runners=$runners, version=$version, eventTypeId=$eventTypeId, complete=$complete, openDate=$openDate, marketTime=$marketTime, bspReconciled=$bspReconciled, lineInterval=$lineInterval, status=$status, ]';
  }

  MarketDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    venue =
        json['venue']
    ;
    raceType =
        json['raceType']
    ;
    settledTime = json['settledTime'] == null ? null : DateTime.parse(json['settledTime']);
    timezone =
        json['timezone']
    ;
    eachWayDivisor =
        json['eachWayDivisor'] == null ? null : json['eachWayDivisor'].toDouble()
    ;
    regulators =
        (json['regulators'] as List).map((item) => item as String).toList()
    ;
    marketType =
        json['marketType']
    ;
    marketBaseRate =
        json['marketBaseRate'] == null ? null : json['marketBaseRate'].toDouble()
    ;
    numberOfWinners =
        json['numberOfWinners']
    ;
    countryCode =
        json['countryCode']
    ;
    lineMaxUnit =
        json['lineMaxUnit'] == null ? null : json['lineMaxUnit'].toDouble()
    ;
    inPlay =
        json['inPlay']
    ;
    betDelay =
        json['betDelay']
    ;
    bspMarket =
        json['bspMarket']
    ;
    bettingType =
        json['bettingType']
    ;
    numberOfActiveRunners =
        json['numberOfActiveRunners']
    ;
    lineMinUnit =
        json['lineMinUnit'] == null ? null : json['lineMinUnit'].toDouble()
    ;
    eventId =
        json['eventId']
    ;
    crossMatching =
        json['crossMatching']
    ;
    runnersVoidable =
        json['runnersVoidable']
    ;
    turnInPlayEnabled =
        json['turnInPlayEnabled']
    ;
    priceLadderDefinition =
      
      
      new PriceLadderDefinition.fromJson(json['priceLadderDefinition'])
;
    keyLineDefinition =
      
      
      new KeyLineDefinition.fromJson(json['keyLineDefinition'])
;
    suspendTime = json['suspendTime'] == null ? null : DateTime.parse(json['suspendTime']);
    discountAllowed =
        json['discountAllowed']
    ;
    persistenceEnabled =
        json['persistenceEnabled']
    ;
    runners =
      RunnerDefinition.listFromJson(json['runners'])
;
    version =
        json['version']
    ;
    eventTypeId =
        json['eventTypeId']
    ;
    complete =
        json['complete']
    ;
    openDate = json['openDate'] == null ? null : DateTime.parse(json['openDate']);
    marketTime = json['marketTime'] == null ? null : DateTime.parse(json['marketTime']);
    bspReconciled =
        json['bspReconciled']
    ;
    lineInterval =
        json['lineInterval'] == null ? null : json['lineInterval'].toDouble()
    ;
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'venue': venue,
      'raceType': raceType,
      'settledTime': settledTime == null ? '' : settledTime.toUtc().toIso8601String(),
      'timezone': timezone,
      'eachWayDivisor': eachWayDivisor,
      'regulators': regulators,
      'marketType': marketType,
      'marketBaseRate': marketBaseRate,
      'numberOfWinners': numberOfWinners,
      'countryCode': countryCode,
      'lineMaxUnit': lineMaxUnit,
      'inPlay': inPlay,
      'betDelay': betDelay,
      'bspMarket': bspMarket,
      'bettingType': bettingType,
      'numberOfActiveRunners': numberOfActiveRunners,
      'lineMinUnit': lineMinUnit,
      'eventId': eventId,
      'crossMatching': crossMatching,
      'runnersVoidable': runnersVoidable,
      'turnInPlayEnabled': turnInPlayEnabled,
      'priceLadderDefinition': priceLadderDefinition,
      'keyLineDefinition': keyLineDefinition,
      'suspendTime': suspendTime == null ? '' : suspendTime.toUtc().toIso8601String(),
      'discountAllowed': discountAllowed,
      'persistenceEnabled': persistenceEnabled,
      'runners': runners,
      'version': version,
      'eventTypeId': eventTypeId,
      'complete': complete,
      'openDate': openDate == null ? '' : openDate.toUtc().toIso8601String(),
      'marketTime': marketTime == null ? '' : marketTime.toUtc().toIso8601String(),
      'bspReconciled': bspReconciled,
      'lineInterval': lineInterval,
      'status': status
     };
  }

  static List<MarketDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketDefinition>() : json.map((value) => new MarketDefinition.fromJson(value)).toList();
  }

  static Map<String, MarketDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketDefinition.fromJson(value));
    }
    return map;
  }
}

