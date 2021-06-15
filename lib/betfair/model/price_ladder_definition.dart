part of swagger.api;

class PriceLadderDefinition {
  
  String type = null;
  //enum typeEnum {  CLASSIC,  FINEST,  LINE_RANGE,  };
  PriceLadderDefinition();

  @override
  String toString() {
    return 'PriceLadderDefinition[type=$type, ]';
  }

  PriceLadderDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type
     };
  }

  static List<PriceLadderDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriceLadderDefinition>() : json.map((value) => new PriceLadderDefinition.fromJson(value)).toList();
  }

  static Map<String, PriceLadderDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceLadderDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriceLadderDefinition.fromJson(value));
    }
    return map;
  }
}

