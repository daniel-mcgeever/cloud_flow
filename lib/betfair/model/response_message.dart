part of swagger.api;

class ResponseMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
  ResponseMessage();

  @override
  String toString() {
    return 'ResponseMessage[op=$op, id=$id, ]';
  }

  ResponseMessage.fromJson(Map<String, dynamic> json) {
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

  static List<ResponseMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMessage>() : json.map((value) => new ResponseMessage.fromJson(value)).toList();
  }

  static Map<String, ResponseMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseMessage.fromJson(value));
    }
    return map;
  }
}

