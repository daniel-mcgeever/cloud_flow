part of swagger.api;

class StatusMessage {
  /* The operation type */
  String op = null;
  
/* Client generated unique id to link request with response (like json rpc) */
  int id = null;
  
/* The number of connections available for this account at this moment in time. Present on responses to Authentication messages only. */
  int connectionsAvailable = null;
  
/* Additional message in case of a failure */
  String errorMessage = null;
  
/* The type of error in case of a failure */
  String errorCode = null;
  //enum errorCodeEnum {  NO_APP_KEY,  INVALID_APP_KEY,  NO_SESSION,  INVALID_SESSION_INFORMATION,  NOT_AUTHORIZED,  INVALID_INPUT,  INVALID_CLOCK,  UNEXPECTED_ERROR,  TIMEOUT,  SUBSCRIPTION_LIMIT_EXCEEDED,  INVALID_REQUEST,  CONNECTION_FAILED,  MAX_CONNECTION_LIMIT_EXCEEDED,  TOO_MANY_REQUESTS,  };
/* The connection id */
  String connectionId = null;
  
/* Is the connection now closed */
  bool connectionClosed = null;
  
/* The status of the last request */
  String statusCode = null;
  //enum statusCodeEnum {  SUCCESS,  FAILURE,  };
  StatusMessage();

  @override
  String toString() {
    return 'StatusMessage[op=$op, id=$id, connectionsAvailable=$connectionsAvailable, errorMessage=$errorMessage, errorCode=$errorCode, connectionId=$connectionId, connectionClosed=$connectionClosed, statusCode=$statusCode, ]';
  }

  StatusMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op =
        json['op']
    ;
    id =
        json['id']
    ;
    connectionsAvailable =
        json['connectionsAvailable']
    ;
    errorMessage =
        json['errorMessage']
    ;
    errorCode =
        json['errorCode']
    ;
    connectionId =
        json['connectionId']
    ;
    connectionClosed =
        json['connectionClosed']
    ;
    statusCode =
        json['statusCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'id': id,
      'connectionsAvailable': connectionsAvailable,
      'errorMessage': errorMessage,
      'errorCode': errorCode,
      'connectionId': connectionId,
      'connectionClosed': connectionClosed,
      'statusCode': statusCode
     };
  }

  static List<StatusMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusMessage>() : json.map((value) => new StatusMessage.fromJson(value)).toList();
  }

  static Map<String, StatusMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusMessage.fromJson(value));
    }
    return map;
  }
}

