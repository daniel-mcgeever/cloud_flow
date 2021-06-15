part of swagger.api;

class OrderRunnerChange {
  /* Matched Backs - matched amounts by distinct matched price on the Back side for this runner (selection) */
  List<List<double>> mb = [];
  
/* Strategy Matches - Matched Backs and Matched Lays grouped by strategy reference */
  Map<String, StrategyMatchChange> smc = {};
  
/* Unmatched Orders - orders on this runner (selection) that are not fully matched */
  List<Order> uo = [];
  
/* Selection Id - the id of the runner (selection) */
  int id = null;
  
/* Handicap - the handicap of the runner (selection) (null if not applicable) */
  double hc = null;
  

  bool fullImage = null;
  
/* Matched Lays - matched amounts by distinct matched price on the Lay side for this runner (selection) */
  List<List<double>> ml = [];
  
  OrderRunnerChange();

  @override
  String toString() {
    return 'OrderRunnerChange[mb=$mb, smc=$smc, uo=$uo, id=$id, hc=$hc, fullImage=$fullImage, ml=$ml, ]';
  }

  OrderRunnerChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mb =
      List.listFromJson(json['mb'])
;
    smc =
      
      StrategyMatchChange.mapFromJson(json['smc'])
      
;
    uo =
      Order.listFromJson(json['uo'])
;
    id =
        json['id']
    ;
    hc =
        json['hc'] == null ? null : json['hc'].toDouble()
    ;
    fullImage =
        json['fullImage']
    ;
    ml =
      List.listFromJson(json['ml'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'mb': mb,
      'smc': smc,
      'uo': uo,
      'id': id,
      'hc': hc,
      'fullImage': fullImage,
      'ml': ml
     };
  }

  static List<OrderRunnerChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderRunnerChange>() : json.map((value) => new OrderRunnerChange.fromJson(value)).toList();
  }

  static Map<String, OrderRunnerChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderRunnerChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderRunnerChange.fromJson(value));
    }
    return map;
  }
}

