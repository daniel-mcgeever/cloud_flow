part of swagger.api;

class HeartbeatMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
  HeartbeatMessage();

  @override
  String toString() {
    return 'HeartbeatMessage[op=$op, id=$id, ]';
  }

  HeartbeatMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id
     };
  }

  static List<HeartbeatMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<HeartbeatMessage>() : json.map((value) => new HeartbeatMessage.fromJson(value)).toList();
  }

  static Map<String, HeartbeatMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HeartbeatMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HeartbeatMessage.fromJson(value));
    }
    return map;
  }
}

