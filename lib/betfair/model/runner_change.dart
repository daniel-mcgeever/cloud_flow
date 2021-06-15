part of swagger.api;

class RunnerChange {
  /* The total amount matched. This value is truncated at 2dp. */
  double tv = null;
  
/* Best Available To Back - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) */
  List<List<double>> batb = [];
  
/* Starting Price Back - PriceVol tuple delta of price changes (0 vol is remove) */
  List<List<double>> spb = [];
  
/* Best Display Available To Lay (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) */
  List<List<double>> bdatl = [];
  
/* Traded - PriceVol tuple delta of price changes (0 vol is remove) */
  List<List<double>> trd = [];
  
/* Starting Price Far - The far starting price (or null if un-changed) */
  double spf = null;
  
/* Last Traded Price - The last traded price (or null if un-changed) */
  double ltp = null;
  
/* Available To Back - PriceVol tuple delta of price changes (0 vol is remove) */
  List<List<double>> atb = [];
  
/* Starting Price Lay - PriceVol tuple delta of price changes (0 vol is remove) */
  List<List<double>> spl = [];
  
/* Starting Price Near - The far starting price (or null if un-changed) */
  double spn = null;
  
/* Available To Lay - PriceVol tuple delta of price changes (0 vol is remove) */
  List<List<double>> atl = [];
  
/* Best Available To Lay - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) */
  List<List<double>> batl = [];
  
/* Selection Id - the id of the runner (selection) */
  int id = null;
  
/* Handicap - the handicap of the runner (selection) (null if not applicable) */
  double hc = null;
  
/* Best Display Available To Back (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) */
  List<List<double>> bdatb = [];
  
  RunnerChange();

  @override
  String toString() {
    return 'RunnerChange[tv=$tv, batb=$batb, spb=$spb, bdatl=$bdatl, trd=$trd, spf=$spf, ltp=$ltp, atb=$atb, spl=$spl, spn=$spn, atl=$atl, batl=$batl, id=$id, hc=$hc, bdatb=$bdatb, ]';
  }

  RunnerChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tv =
        json['tv'] == null ? null : json['tv'].toDouble()
    ;
    batb =
      List.listFromJson(json['batb'])
;
    spb =
      List.listFromJson(json['spb'])
;
    bdatl =
      List.listFromJson(json['bdatl'])
;
    trd =
      List.listFromJson(json['trd'])
;
    spf =
        json['spf'] == null ? null : json['spf'].toDouble()
    ;
    ltp =
        json['ltp'] == null ? null : json['ltp'].toDouble()
    ;
    atb =
      List.listFromJson(json['atb'])
;
    spl =
      List.listFromJson(json['spl'])
;
    spn =
        json['spn'] == null ? null : json['spn'].toDouble()
    ;
    atl =
      List.listFromJson(json['atl'])
;
    batl =
      List.listFromJson(json['batl'])
;
    id =
        json['id']
    ;
    hc =
        json['hc'] == null ? null : json['hc'].toDouble()
    ;
    bdatb =
      List.listFromJson(json['bdatb'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'tv': tv,
      'batb': batb,
      'spb': spb,
      'bdatl': bdatl,
      'trd': trd,
      'spf': spf,
      'ltp': ltp,
      'atb': atb,
      'spl': spl,
      'spn': spn,
      'atl': atl,
      'batl': batl,
      'id': id,
      'hc': hc,
      'bdatb': bdatb
     };
  }

  static List<RunnerChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerChange>() : json.map((value) => new RunnerChange.fromJson(value)).toList();
  }

  static Map<String, RunnerChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerChange.fromJson(value));
    }
    return map;
  }
}

