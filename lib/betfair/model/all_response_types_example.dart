part of swagger.api;

class AllResponseTypesExample {
  
  String opTypes = null;
  //enum opTypesEnum {  connection,  status,  mcm,  ocm,  };

  MarketChangeMessage marketChangeMessage = null;
  

  ConnectionMessage connection = null;
  

  OrderChangeMessage orderChangeMessage = null;
  

  StatusMessage status = null;
  
  AllResponseTypesExample();

  @override
  String toString() {
    return 'AllResponseTypesExample[opTypes=$opTypes, marketChangeMessage=$marketChangeMessage, connection=$connection, orderChangeMessage=$orderChangeMessage, status=$status, ]';
  }

  AllResponseTypesExample.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    opTypes =
        json['opTypes']
    ;
    marketChangeMessage =
      
      
      new MarketChangeMessage.fromJson(json['marketChangeMessage'])
;
    connection =
      
      
      new ConnectionMessage.fromJson(json['connection'])
;
    orderChangeMessage =
      
      
      new OrderChangeMessage.fromJson(json['orderChangeMessage'])
;
    status =
      
      
      new StatusMessage.fromJson(json['status'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'opTypes': opTypes,
      'marketChangeMessage': marketChangeMessage,
      'connection': connection,
      'orderChangeMessage': orderChangeMessage,
      'status': status
     };
  }

  static List<AllResponseTypesExample> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllResponseTypesExample>() : json.map((value) => new AllResponseTypesExample.fromJson(value)).toList();
  }

  static Map<String, AllResponseTypesExample> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllResponseTypesExample>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllResponseTypesExample.fromJson(value));
    }
    return map;
  }
}

