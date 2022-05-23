import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> login(String email, String password) async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String loginAPI = '/api/login/';
  String host = '192.168.0.10:5000';

  try {
    final response = await http.post(
      Uri.http(host, loginAPI),
      headers: headers,
      body: json.encode(
        {'email': email, 'password': password},
      ),
    );
    print(response);
    return '';
  } catch (e) {
    return 'Error al conectarse al servidor';
  }
}
