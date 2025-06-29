// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/xrp_data.dart';

Future<XRPData> fetchXRPData() async {
  final response = await http.get(
    Uri.parse('https://api.mypapit.net/crypto/XRPMYR.json'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return XRPData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load XRP data');
  }
}