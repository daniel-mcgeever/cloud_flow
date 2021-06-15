import 'dart:io';
import 'dart:convert';

class BetfairClient {
  String _ssid = 'C6HApuwzHArvWhjx';
  String _appkey = 'CbNgbFz3AxZPOMdmZFTxpc+F45FZUCWzC9JOvrBrf8w=';
  late Socket _socket;

  Map<String, Object> options = {
    'hostname': 'beta-api.betfair.com',
    'port': 443,
    'path': '/json-rpc',
    'method': 'POST',
    'headers': {
      'X-Application': 'C6HApuwzHArvWhjx',
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'X-Authentication': 'CbNgbFz3AxZPOMdmZFTxpc+F45FZUCWzC9JOvrBrf8w='
    }
  };

  void connect() async {
    Socket socket = await Socket.connect('stream-api.betfair.com', 443);
    String message =
        '{"op": "authentication", "id": 1, "appKey": "C6HApuwzHArvWhjx", "session": "CbNgbFz3AxZPOMdmZFTxpc+F45FZUCWzC9JOvrBrf8w="}\r\n';
    print('Connected to ' + socket.port.toString());
    socket.listen((event) {
      print(event);
    });
    await sendMessage(socket, message);
  }

  Future<void> sendMessage(Socket socket, String message) async {
    print('Client: $message');
    socket.write(message);
    await Future.delayed(Duration(seconds: 2));
  }

  void authenticate() async {
    this._socket.write(
        '{"op": "authentication", "appKey": "C6HApuwzHArvWhjx", "session": "CbNgbFz3AxZPOMdmZFTxpc+F45FZUCWzC9JOvrBrf8w=}\r\n');
  }

  void subscribe() async {
    _socket.write(
        '{"op":"orderSubscription","orderFilter":{"includeOverallPosition":false,"customerStrategyRefs":["betstrategy1"],"partitionMatchedByStrategyRef":true},"segmentationEnabled":true}\r\n');
  }
}
