part of swagger.api;

class Order {
  /* Side - the side of the order. For Line markets a 'B' bet refers to a SELL line and an 'L' bet refers to a BUY line. */
  String side = null;
  //enum sideEnum {  B,  L,  };
/* Size Voided - the amount of the order that has been voided */
  double sv = null;
  
/* Persistence Type - whether the order will persist at in play or not (L = LAPSE, P = PERSIST, MOC = Market On Close) */
  String pt = null;
  //enum ptEnum {  L,  P,  MOC,  };
/* Order Type - the type of the order (L = LIMIT, MOC = MARKET_ON_CLOSE, LOC = LIMIT_ON_CLOSE) */
  String ot = null;
  //enum otEnum {  L,  LOC,  MOC,  };
/* Lapse Status Reason Code - the reason that some or all of this order has been lapsed (null if no portion of the order is lapsed */
  String lsrc = null;
  
/* Price - the original placed price of the order. Line markets operate at even-money odds of 2.0. However, price for these markets refers to the line positions available as defined by the markets min-max range and interval steps */
  double p = null;
  
/* Size Cancelled - the amount of the order that has been cancelled */
  double sc = null;
  
/* Regulator Code - the regulator of the order */
  String rc = null;
  
/* Size - the original placed size of the order */
  double s = null;
  
/* Placed Date - the date the order was placed */
  int pd = null;
  
/* Regulator Auth Code - the auth code returned by the regulator */
  String rac = null;
  
/* Matched Date - the date the order was matched (null if the order is not matched) */
  int md = null;
  
/* Cancelled Date - the date the order was cancelled (null if the order is not cancelled) */
  int cd = null;
  
/* Lapsed Date - the date the order was lapsed (null if the order is not lapsed) */
  int ld = null;
  
/* Size Lapsed - the amount of the order that has been lapsed */
  double sl = null;
  
/* Average Price Matched - the average price the order was matched at (null if the order is not matched). This value is not meaningful for activity on Line markets and is not guaranteed to be returned or maintained for these markets. */
  double avp = null;
  
/* Size Matched - the amount of the order that has been matched */
  double sm = null;
  
/* Order Reference - the customer's order reference for this order (empty string if one was not set) */
  String rfo = null;
  
/* Bet Id - the id of the order */
  String id = null;
  
/* BSP Liability - the BSP liability of the order (null if the order is not a BSP order) */
  double bsp = null;
  
/* Strategy Reference - the customer's strategy reference for this order (empty string if one was not set) */
  String rfs = null;
  
/* Status - the status of the order (E = EXECUTABLE, EC = EXECUTION_COMPLETE) */
  String status = null;
  //enum statusEnum {  E,  EC,  };
/* Size Remaining - the amount of the order that is remaining unmatched */
  double sr = null;
  
  Order();

  @override
  String toString() {
    return 'Order[side=$side, sv=$sv, pt=$pt, ot=$ot, lsrc=$lsrc, p=$p, sc=$sc, rc=$rc, s=$s, pd=$pd, rac=$rac, md=$md, cd=$cd, ld=$ld, sl=$sl, avp=$avp, sm=$sm, rfo=$rfo, id=$id, bsp=$bsp, rfs=$rfs, status=$status, sr=$sr, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    side =
        json['side']
    ;
    sv =
        json['sv'] == null ? null : json['sv'].toDouble()
    ;
    pt =
        json['pt']
    ;
    ot =
        json['ot']
    ;
    lsrc =
        json['lsrc']
    ;
    p =
        json['p'] == null ? null : json['p'].toDouble()
    ;
    sc =
        json['sc'] == null ? null : json['sc'].toDouble()
    ;
    rc =
        json['rc']
    ;
    s =
        json['s'] == null ? null : json['s'].toDouble()
    ;
    pd =
        json['pd']
    ;
    rac =
        json['rac']
    ;
    md =
        json['md']
    ;
    cd =
        json['cd']
    ;
    ld =
        json['ld']
    ;
    sl =
        json['sl'] == null ? null : json['sl'].toDouble()
    ;
    avp =
        json['avp'] == null ? null : json['avp'].toDouble()
    ;
    sm =
        json['sm'] == null ? null : json['sm'].toDouble()
    ;
    rfo =
        json['rfo']
    ;
    id =
        json['id']
    ;
    bsp =
        json['bsp'] == null ? null : json['bsp'].toDouble()
    ;
    rfs =
        json['rfs']
    ;
    status =
        json['status']
    ;
    sr =
        json['sr'] == null ? null : json['sr'].toDouble()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'side': side,
      'sv': sv,
      'pt': pt,
      'ot': ot,
      'lsrc': lsrc,
      'p': p,
      'sc': sc,
      'rc': rc,
      's': s,
      'pd': pd,
      'rac': rac,
      'md': md,
      'cd': cd,
      'ld': ld,
      'sl': sl,
      'avp': avp,
      'sm': sm,
      'rfo': rfo,
      'id': id,
      'bsp': bsp,
      'rfs': rfs,
      'status': status,
      'sr': sr
     };
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? new List<Order>() : json.map((value) => new Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Order>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Order.fromJson(value));
    }
    return map;
  }
}

