part of swagger.api;

class RunnerDefinition {
  
  int sortPriority = null;
  

  DateTime removalDate = null;
  
/* Selection Id - the id of the runner (selection) */
  int id = null;
  
/* Handicap - the handicap of the runner (selection) (null if not applicable) */
  double hc = null;
  

  double adjustmentFactor = null;
  

  double bsp = null;
  

  String status = null;
  //enum statusEnum {  ACTIVE,  WINNER,  LOSER,  REMOVED,  REMOVED_VACANT,  HIDDEN,  PLACED,  };
  RunnerDefinition();

  @override
  String toString() {
    return 'RunnerDefinition[sortPriority=$sortPriority, removalDate=$removalDate, id=$id, hc=$hc, adjustmentFactor=$adjustmentFactor, bsp=$bsp, status=$status, ]';
  }

  RunnerDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sortPriority =
        json['sortPriority']
    ;
    removalDate = json['removalDate'] == null ? null : DateTime.parse(json['removalDate']);
    id =
        json['id']
    ;
    hc =
        json['hc'] == null ? null : json['hc'].toDouble()
    ;
    adjustmentFactor =
        json['adjustmentFactor'] == null ? null : json['adjustmentFactor'].toDouble()
    ;
    bsp =
        json['bsp'] == null ? null : json['bsp'].toDouble()
    ;
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'sortPriority': sortPriority,
      'removalDate': removalDate == null ? '' : removalDate.toUtc().toIso8601String(),
      'id': id,
      'hc': hc,
      'adjustmentFactor': adjustmentFactor,
      'bsp': bsp,
      'status': status
     };
  }

  static List<RunnerDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerDefinition>() : json.map((value) => new RunnerDefinition.fromJson(value)).toList();
  }

  static Map<String, RunnerDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerDefinition.fromJson(value));
    }
    return map;
  }
}

