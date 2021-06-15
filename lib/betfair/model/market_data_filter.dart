part of swagger.api;

class MarketDataFilter {
  
  int ladderLevels = null;
  

  List<String> fields = [];
  //enum fieldsEnum {  EX_BEST_OFFERS_DISP,  EX_BEST_OFFERS,  EX_ALL_OFFERS,  EX_TRADED,  EX_TRADED_VOL,  EX_LTP,  EX_MARKET_DEF,  SP_TRADED,  SP_PROJECTED,  };
  MarketDataFilter();

  @override
  String toString() {
    return 'MarketDataFilter[ladderLevels=$ladderLevels, fields=$fields, ]';
  }

  MarketDataFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ladderLevels =
        json['ladderLevels']
    ;
    fields =
        (json['fields'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'ladderLevels': ladderLevels,
      'fields': fields
     };
  }

  static List<MarketDataFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketDataFilter>() : json.map((value) => new MarketDataFilter.fromJson(value)).toList();
  }

  static Map<String, MarketDataFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketDataFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketDataFilter.fromJson(value));
    }
    return map;
  }
}

