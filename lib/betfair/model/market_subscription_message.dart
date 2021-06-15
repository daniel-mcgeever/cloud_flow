part of swagger.api;

class MarketSubscriptionMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
/* Segmentation Enabled - allow the server to send large sets of data in segments, instead of a single block */
  bool segmentationEnabled = null;
  
/* Token value delta (received in MarketChangeMessage) that should be passed to resume a subscription */
  String clk = null;
  
/* Heartbeat Milliseconds - the heartbeat rate (looped back on initial image after validation: bounds are 500 to 5000) */
  int heartbeatMs = null;
  
/* Token value (received in initial MarketChangeMessage) that should be passed to resume a subscription */
  String initialClk = null;
  

  MarketFilter marketFilter = null;
  
/* Conflate Milliseconds - the conflation rate (looped back on initial image after validation: bounds are 0 to 120000) */
  int conflateMs = null;
  

  MarketDataFilter marketDataFilter = null;
  
  MarketSubscriptionMessage();

  @override
  String toString() {
    return 'MarketSubscriptionMessage[op=$op, id=$id, segmentationEnabled=$segmentationEnabled, clk=$clk, heartbeatMs=$heartbeatMs, initialClk=$initialClk, marketFilter=$marketFilter, conflateMs=$conflateMs, marketDataFilter=$marketDataFilter, ]';
  }

  MarketSubscriptionMessage.fromJson(Map<String, dynamic> json) {
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
    clk =
        json['clk']
    ;
    heartbeatMs =
        json['heartbeatMs']
    ;
    initialClk =
        json['initialClk']
    ;
    marketFilter =
      
      
      new MarketFilter.fromJson(json['marketFilter'])
;
    conflateMs =
        json['conflateMs']
    ;
    marketDataFilter =
      
      
      new MarketDataFilter.fromJson(json['marketDataFilter'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'segmentationEnabled': segmentationEnabled,
      'clk': clk,
      'heartbeatMs': heartbeatMs,
      'initialClk': initialClk,
      'marketFilter': marketFilter,
      'conflateMs': conflateMs,
      'marketDataFilter': marketDataFilter
     };
  }

  static List<MarketSubscriptionMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketSubscriptionMessage>() : json.map((value) => new MarketSubscriptionMessage.fromJson(value)).toList();
  }

  static Map<String, MarketSubscriptionMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketSubscriptionMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketSubscriptionMessage.fromJson(value));
    }
    return map;
  }
}

