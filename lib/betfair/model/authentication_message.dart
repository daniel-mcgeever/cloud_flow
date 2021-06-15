part of swagger.api;

class AuthenticationMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  

  String session = null;
  

  String appKey = null;
  
  AuthenticationMessage();

  @override
  String toString() {
    return 'AuthenticationMessage[op=$op, id=$id, session=$session, appKey=$appKey, ]';
  }

  AuthenticationMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
    session =
        json['session']
    ;
    appKey =
        json['appKey']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'session': session,
      'appKey': appKey
     };
  }

  static List<AuthenticationMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthenticationMessage>() : json.map((value) => new AuthenticationMessage.fromJson(value)).toList();
  }

  static Map<String, AuthenticationMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticationMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticationMessage.fromJson(value));
    }
    return map;
  }
}

