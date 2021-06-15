part of swagger.api;

class OrderFilter {
  /* Returns overall / net position (See: OrderRunnerChange.mb / OrderRunnerChange.ml). Default=true */
  bool includeOverallPosition = null;
  
/* Internal use only & should not be set on your filter (your subscription is already locked to your account). If set subscription will fail. */
  List<int> accountIds = [];
  
/* Restricts to specified customerStrategyRefs; this will filter orders and StrategyMatchChanges accordingly (Note: overall postition is not filtered) */
  List<String> customerStrategyRefs = [];
  
/* Returns strategy positions (See: OrderRunnerChange.smc=Map<customerStrategyRef, StrategyMatchChange>) - these are sent in delta format as per overall position. Default=false */
  bool partitionMatchedByStrategyRef = null;
  
  OrderFilter();

  @override
  String toString() {
    return 'OrderFilter[includeOverallPosition=$includeOverallPosition, accountIds=$accountIds, customerStrategyRefs=$customerStrategyRefs, partitionMatchedByStrategyRef=$partitionMatchedByStrategyRef, ]';
  }

  OrderFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    includeOverallPosition =
        json['includeOverallPosition']
    ;
    accountIds =
        (json['accountIds'] as List).map((item) => item as int).toList()
    ;
    customerStrategyRefs =
        (json['customerStrategyRefs'] as List).map((item) => item as String).toList()
    ;
    partitionMatchedByStrategyRef =
        json['partitionMatchedByStrategyRef']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'includeOverallPosition': includeOverallPosition,
      'accountIds': accountIds,
      'customerStrategyRefs': customerStrategyRefs,
      'partitionMatchedByStrategyRef': partitionMatchedByStrategyRef
     };
  }

  static List<OrderFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderFilter>() : json.map((value) => new OrderFilter.fromJson(value)).toList();
  }

  static Map<String, OrderFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderFilter.fromJson(value));
    }
    return map;
  }
}

