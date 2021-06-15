part of swagger.api;

class AllRequestTypesExample {
  
  String opTypes = null;
  //enum opTypesEnum {  heartbeat,  authentication,  marketSubscription,  orderSubscription,  };

  HeartbeatMessage heartbeat = null;
  

  OrderSubscriptionMessage orderSubscriptionMessage = null;
  

  MarketSubscriptionMessage marketSubscription = null;
  

  AuthenticationMessage authentication = null;
  
  AllRequestTypesExample();

  @override
  String toString() {
    return 'AllRequestTypesExample[opTypes=$opTypes, heartbeat=$heartbeat, orderSubscriptionMessage=$orderSubscriptionMessage, marketSubscription=$marketSubscription, authentication=$authentication, ]';
  }

  AllRequestTypesExample.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    opTypes =
        json['opTypes']
    ;
    heartbeat =
      
      
      new HeartbeatMessage.fromJson(json['heartbeat'])
;
    orderSubscriptionMessage =
      
      
      new OrderSubscriptionMessage.fromJson(json['orderSubscriptionMessage'])
;
    marketSubscription =
      
      
      new MarketSubscriptionMessage.fromJson(json['marketSubscription'])
;
    authentication =
      
      
      new AuthenticationMessage.fromJson(json['authentication'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'opTypes': opTypes,
      'heartbeat': heartbeat,
      'orderSubscriptionMessage': orderSubscriptionMessage,
      'marketSubscription': marketSubscription,
      'authentication': authentication
     };
  }

  static List<AllRequestTypesExample> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllRequestTypesExample>() : json.map((value) => new AllRequestTypesExample.fromJson(value)).toList();
  }

  static Map<String, AllRequestTypesExample> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllRequestTypesExample>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllRequestTypesExample.fromJson(value));
    }
    return map;
  }
}

