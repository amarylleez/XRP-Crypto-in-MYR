// lib/models/xrp_data.dart
class XRPData {
  final String pair;
  final int timestamp;
  final double bid;
  final double ask;
  final double lastTrade;
  final double volume;
  final String status;

  const XRPData({
    required this.pair,
    required this.timestamp,
    required this.bid,
    required this.ask,
    required this.lastTrade,
    required this.volume,
    required this.status,
  });

  factory XRPData.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'pair': String pair,
      'timestamp': int timestamp,
      'bid': String bid,
      'ask': String ask,
      'last_trade': String lastTrade,
      'rolling_24_hour_volume': String volume,
      'status': String status,
      } =>
          XRPData(
            pair: pair,
            timestamp: timestamp,
            bid: double.parse(bid),
            ask: double.parse(ask),
            lastTrade: double.parse(lastTrade),
            volume: double.parse(volume),
            status: status,
          ),
      _ => throw const FormatException('Failed to load XRP data.'),
    };
  }
}