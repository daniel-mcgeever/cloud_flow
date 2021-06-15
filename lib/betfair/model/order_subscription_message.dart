part of swagger.api;

class OrderSubscriptionMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
/* Segmentation Enabled - allow the server to send large sets of data in segments, instead of a single block */
  bool segmentationEnabled = null;
  
/* Optional filter applied to order subscription */
  OrderFilter orderFilter = null;
  
/* Token value delta (received in MarketChangeMessage) that should be passed to resume a subscription */
  String clk = null;
  
/* Heartbeat Milliseconds - the heartbeat rate (looped back on initial image after validation: bounds are 500 to 5000) */
  int heartbeatMs = null;
  
/* Token value (received in initial MarketChangeMessage) that should be passed to resume a subscription */
  String initialClk = null;
  
/* Conflate Milliseconds - the conflation rate (looped back on initial image after validation: bounds are 0 to 120000) */
  int conflateMs = null;
  
  OrderSubscriptionMessage();

  @override
  String toString() {
    return 'OrderSubscriptionMessage[op=$op, id=$id, segmentationEnabled=$segmentationEnabled, orderFilter=$orderFilter, clk=$clk, heartbeatMs=$heartbeatMs, initialClk=$initialClk, conflateMs=$conflateMs, ]';
  }

  OrderSubscriptionMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
    segmentationEnabled =
        json['segmentationEnabled']
    ;
    orderFilter =
      
      
      new OrderFilter.fromJson(json['orderFilter'])
;
    clk =
        json['clk']
    ;
    heartbeatMs =
        json['heartbeatMs']
    ;
    initialClk =
        json['initialClk']
    ;
    conflateMs =
        json['conflateMs']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'segmentationEnabled': segmentationEnabled,
      'orderFilter': orderFilter,
      'clk': clk,
      'heartbeatMs': heartbeatMs,
      'initialClk': initialClk,
      'conflateMs': conflateMs
     };
  }

  static List<OrderSubscriptionMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderSubscriptionMessage>() : json.map((value) => new OrderSubscriptionMessage.fromJson(value)).toList();
  }

  static Map<String, OrderSubscriptionMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderSubscriptionMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderSubscriptionMessage.fromJson(value));
    }
    return map;
  }
}

