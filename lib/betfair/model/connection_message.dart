part of swagger.api;

class ConnectionMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
/* The connection id */
  String connectionId = null;
  
  ConnectionMessage();

  @override
  String toString() {
    return 'ConnectionMessage[op=$op, id=$id, connectionId=$connectionId, ]';
  }

  ConnectionMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
    connectionId =
        json['connectionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'connectionId': connectionId
     };
  }

  static List<ConnectionMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectionMessage>() : json.map((value) => new ConnectionMessage.fromJson(value)).toList();
  }

  static Map<String, ConnectionMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectionMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectionMessage.fromJson(value));
    }
    return map;
  }
}

