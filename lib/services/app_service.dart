import 'dart:convert';

import 'package:sso_uiii/model/response_application.dart';
import 'package:sso_uiii/services/auth_services.dart';
import 'package:http/http.dart' as http;

class AppServices {
  Future<List<Datum>> getListApp() async {
    final uri = Uri.https(baseUrl, "/applications");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      ResponseApplications responseApplications =
          ResponseApplications.fromJson(jsonDecode(response.body));
      return responseApplications.data ?? [];
    } else {
      return [];
    }
  }
}
