// ignore_for_file: public_member_api_docs, depend_on_referenced_packages
import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

///////////////////////////////////////////////////////////////////
final Provider<HttpClient> httpClientProvider = Provider<HttpClient>((Ref<HttpClient> ref) => HttpClient());

////////////////////
class HttpClient {
  HttpClient() {
    _client = Client();
  }

  late Client _client;

  ///
  Future<dynamic> postByPath({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final Response response = await _client.post(Uri.parse(path), headers: await _headers, body: json.encode(body));

    final String bodyString = utf8.decode(response.bodyBytes);

    try {
      if (bodyString.isEmpty) {
        throw Exception();
      }
      return jsonDecode(bodyString);
    } on Exception catch (_) {
      throw Exception('json parse error');
    }
  }

  Future<Map<String, String>> get _headers async => <String, String>{'content-type': 'application/json'};
}

///////////////////////////////////////////////////////////////////
class Environment {
  Environment._();

  static String get apiEndPoint => '49.212.175.205:3000';

  static String get apiBasePath => 'api/v1';
}
