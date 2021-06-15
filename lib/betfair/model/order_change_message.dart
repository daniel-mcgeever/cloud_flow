part of swagger.api;

class OrderChangeMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
/* Change Type - set to indicate the type of change - if null this is a delta) */
  String ct = null;
  //enum ctEnum {  SUB_IMAGE,  RESUB_DELTA,  HEARTBEAT,  };
/* Token value (non-null) should be stored and passed in a MarketSubscriptionMessage to resume subscription (in case of disconnect) */
  String clk = null;
  
/* Heartbeat Milliseconds - the heartbeat rate (may differ from requested: bounds are 500 to 30000) */
  int heartbeatMs = null;
  
/* Publish Time (in millis since epoch) that the changes were generated */
  int pt = null;
  
/* OrderMarketChanges - the modifications to account's orders (will be null on a heartbeat */
  List<OrderMarketChange> oc = [];
  
/* Token value (non-null) should be stored and passed in a MarketSubscriptionMessage to resume subscription (in case of disconnect) */
  String initialClk = null;
  
/* Conflate Milliseconds - the conflation rate (may differ from that requested if subscription is delayed) */
  int conflateMs = null;
  
/* Segment Type - if the change is split into multiple segments, this denotes the beginning and end of a change, and segments in between. Will be null if data is not segmented */
  String segmentType = null;
  //enum segmentTypeEnum {  SEG_START,  SEG,  SEG_END,  };
/* Stream status: set to null if the exchange stream data is up to date and 503 if the downstream services are experiencing latencies */
  int status = null;
  
  OrderChangeMessage();

  @override
  String toString() {
    return 'OrderChangeMessage[op=$op, id=$id, ct=$ct, clk=$clk, heartbeatMs=$heartbeatMs, pt=$pt, oc=$oc, initialClk=$initialClk, conflateMs=$conflateMs, segmentType=$segmentType, status=$status, ]';
  }

  OrderChangeMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
    ct =
        json['ct']
    ;
    clk =
        json['clk']
    ;
    heartbeatMs =
        json['heartbeatMs']
    ;
    pt =
        json['pt']
    ;
    oc =
      OrderMarketChange.listFromJson(json['oc'])
;
    initialClk =
        json['initialClk']
    ;
    conflateMs =
        json['conflateMs']
    ;
    segmentType =
        json['segmentType']
    ;
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'ct': ct,
      'clk': clk,
      'heartbeatMs': heartbeatMs,
      'pt': pt,
      'oc': oc,
      'initialClk': initialClk,
      'conflateMs': conflateMs,
      'segmentType': segmentType,
      'status': status
     };
  }

  static List<OrderChangeMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderChangeMessage>() : json.map((value) => new OrderChangeMessage.fromJson(value)).toList();
  }

  static Map<String, OrderChangeMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderChangeMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderChangeMessage.fromJson(value));
    }
    return map;
  }
}

