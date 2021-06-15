part of swagger.api;

class OrderMarketChange {
  
  int accountId = null;
  
/* Order Changes - a list of changes to orders on a selection */
  List<OrderRunnerChange> orc = [];
  

  bool closed = null;
  
/* Market Id - the id of the market the order is on */
  String id = null;
  

  bool fullImage = null;
  
  OrderMarketChange();

  @override
  String toString() {
    return 'OrderMarketChange[accountId=$accountId, orc=$orc, closed=$closed, id=$id, fullImage=$fullImage, ]';
  }

  OrderMarketChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accountId =
        json['accountId']
    ;
    orc =
      OrderRunnerChange.listFromJson(json['orc'])
;
    closed =
        json['closed']
    ;
    id =
        json['id']
    ;
    fullImage =
        json['fullImage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'orc': orc,
      'closed': closed,
      'id': id,
      'fullImage': fullImage
     };
  }

  static List<OrderMarketChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderMarketChange>() : json.map((value) => new OrderMarketChange.fromJson(value)).toList();
  }

  static Map<String, OrderMarketChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderMarketChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderMarketChange.fromJson(value));
    }
    return map;
  }
}

