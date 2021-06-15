part of swagger.api;

class KeyLineDefinition {
  
  List<KeyLineSelection> kl = [];
  
  KeyLineDefinition();

  @override
  String toString() {
    return 'KeyLineDefinition[kl=$kl, ]';
  }

  KeyLineDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    kl =
      KeyLineSelection.listFromJson(json['kl'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'kl': kl
     };
  }

  static List<KeyLineDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<KeyLineDefinition>() : json.map((value) => new KeyLineDefinition.fromJson(value)).toList();
  }

  static Map<String, KeyLineDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KeyLineDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KeyLineDefinition.fromJson(value));
    }
    return map;
  }
}

