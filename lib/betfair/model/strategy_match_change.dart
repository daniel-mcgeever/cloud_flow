part of swagger.api;

class StrategyMatchChange {
  /* Matched Backs - matched amounts by distinct matched price on the Back side for this strategy */
  List<List<double>> mb = [];
  
/* Matched Lays - matched amounts by distinct matched price on the Lay side for this strategy */
  List<List<double>> ml = [];
  
  StrategyMatchChange();

  @override
  String toString() {
    return 'StrategyMatchChange[mb=$mb, ml=$ml, ]';
  }

  StrategyMatchChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mb =
      List.listFromJson(json['mb'])
;
    ml =
      List.listFromJson(json['ml'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'mb': mb,
      'ml': ml
     };
  }

  static List<StrategyMatchChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<StrategyMatchChange>() : json.map((value) => new StrategyMatchChange.fromJson(value)).toList();
  }

  static Map<String, StrategyMatchChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StrategyMatchChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StrategyMatchChange.fromJson(value));
    }
    return map;
  }
}

