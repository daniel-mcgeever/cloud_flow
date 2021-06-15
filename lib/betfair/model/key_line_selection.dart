part of swagger.api;

class KeyLineSelection {
  
  int id = null;
  

  double hc = null;
  
  KeyLineSelection();

  @override
  String toString() {
    return 'KeyLineSelection[id=$id, hc=$hc, ]';
  }

  KeyLineSelection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    hc =
        json['hc'] == null ? null : json['hc'].toDouble()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'hc': hc
     };
  }

  static List<KeyLineSelection> listFromJson(List<dynamic> json) {
    return json == null ? new List<KeyLineSelection>() : json.map((value) => new KeyLineSelection.fromJson(value)).toList();
  }

  static Map<String, KeyLineSelection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KeyLineSelection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KeyLineSelection.fromJson(value));
    }
    return map;
  }
}

