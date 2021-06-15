part of swagger.api;

class RequestMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
  RequestMessage();

  @override
  String toString() {
    return 'RequestMessage[op=$op, id=$id, ]';
  }

  RequestMessage.fromJson(Map<String, dynamic> json) {
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

  static List<RequestMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestMessage>() : json.map((value) => new RequestMessage.fromJson(value)).toList();
  }

  static Map<String, RequestMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestMessage.fromJson(value));
    }
    return map;
  }
}

