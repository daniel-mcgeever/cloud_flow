part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "http://stream-api.betfair.com:443/api"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AllRequestTypesExample':
          return new AllRequestTypesExample.fromJson(value);
        case 'AllResponseTypesExample':
          return new AllResponseTypesExample.fromJson(value);
        case 'AuthenticationMessage':
          return new AuthenticationMessage.fromJson(value);
        case 'ConnectionMessage':
          return new ConnectionMessage.fromJson(value);
        case 'HeartbeatMessage':
          return new HeartbeatMessage.fromJson(value);
        case 'KeyLineDefinition':
          return new KeyLineDefinition.fromJson(value);
        case 'KeyLineSelection':
          return new KeyLineSelection.fromJson(value);
        case 'MarketChange':
          return new MarketChange.fromJson(value);
        case 'MarketChangeMessage':
          return new MarketChangeMessage.fromJson(value);
        case 'MarketDataFilter':
          return new MarketDataFilter.fromJson(value);
        case 'MarketDefinition':
          return new MarketDefinition.fromJson(value);
        case 'MarketFilter':
          return new MarketFilter.fromJson(value);
        case 'MarketSubscriptionMessage':
          return new MarketSubscriptionMessage.fromJson(value);
        case 'Order':
          return new Order.fromJson(value);
        case 'OrderChangeMessage':
          return new OrderChangeMessage.fromJson(value);
        case 'OrderFilter':
          return new OrderFilter.fromJson(value);
        case 'OrderMarketChange':
          return new OrderMarketChange.fromJson(value);
        case 'OrderRunnerChange':
          return new OrderRunnerChange.fromJson(value);
        case 'OrderSubscriptionMessage':
          return new OrderSubscriptionMessage.fromJson(value);
        case 'PriceLadderDefinition':
          return new PriceLadderDefinition.fromJson(value);
        case 'RequestMessage':
          return new RequestMessage.fromJson(value);
        case 'ResponseMessage':
          return new ResponseMessage.fromJson(value);
        case 'RunnerChange':
          return new RunnerChange.fromJson(value);
        case 'RunnerDefinition':
          return new RunnerDefinition.fromJson(value);
        case 'StatusMessage':
          return new StatusMessage.fromJson(value);
        case 'StrategyMatchChange':
          return new StrategyMatchChange.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)!) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType!)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)!) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType!)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName]!;
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
