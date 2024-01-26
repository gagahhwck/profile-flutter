import 'dart:convert';
import 'package:sso_uiii/helper/shared_pref.dart';
import 'package:sso_uiii/model/reponse_profile.dart';
import 'package:sso_uiii/model/response_login.dart';
import 'package:http/http.dart' as http;

const baseUrl = "itdev.uiii.ac.id";
const apiKey = "eiWee8ep9due4deeshoa8Peichai8Eih";

class AuthServices {
  Future<ResponseLogin> login(String email, String password) async {
    final uri = Uri.https(baseUrl, "/api/login");
    final response = await http.post(
      uri,
      body: {
        "email": email,
        "password": password,
      },
      headers: {
        "key": apiKey,
      },
    );
    print(jsonDecode(response.body));
    return ResponseLogin.fromJson(jsonDecode(response.body));
  }

  // Profile
  Future<Data> profile() async {
    final uri = Uri.https(baseUrl, "/api/profile");
    final sharedPref = SharedPref();
    final authToken = await sharedPref.read('token');
    final response = await http.get(
      uri,
      headers: {"key": apiKey, "Authorization": 'Bearer $authToken'},
    );
    ResponseProfile responseProfile =
        ResponseProfile.fromJson(jsonDecode(response.body));
    return responseProfile.data!;
  }
}
