part of swagger.api;

class MarketChange {
  /* Runner Changes - a list of changes to runners (or null if un-changed) */
  List<RunnerChange> rc = [];
  
/* Image - replace existing prices / data with the data supplied: it is not a delta (or null if delta) */
  bool img = null;
  
/* The total amount matched across the market. This value is truncated at 2dp (or null if un-changed) */
  double tv = null;
  
/* Conflated - have more than a single change been combined (or null if not conflated) */
  bool con = null;
  
/* Market Definition - the definition of the market (or null if un-changed) */
  MarketDefinition marketDefinition = null;
  
/* Market Id - the id of the market */
  String id = null;
  
  MarketChange();

  @override
  String toString() {
    return 'MarketChange[rc=$rc, img=$img, tv=$tv, con=$con, marketDefinition=$marketDefinition, id=$id, ]';
  }

  MarketChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rc =
      RunnerChange.listFromJson(json['rc'])
;
    img =
        json['img']
    ;
    tv =
        json['tv'] == null ? null : json['tv'].toDouble()
    ;
    con =
        json['con']
    ;
    marketDefinition =
      
      
      new MarketDefinition.fromJson(json['marketDefinition'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'rc': rc,
      'img': img,
      'tv': tv,
      'con': con,
      'marketDefinition': marketDefinition,
      'id': id
     };
  }

  static List<MarketChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketChange>() : json.map((value) => new MarketChange.fromJson(value)).toList();
  }

  static Map<String, MarketChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketChange.fromJson(value));
    }
    return map;
  }
}

