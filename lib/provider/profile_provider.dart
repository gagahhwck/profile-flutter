import 'package:flutter/material.dart';
import 'package:sso_uiii/model/reponse_profile.dart';
import 'package:sso_uiii/services/auth_services.dart';

class ProfileProvider extends ChangeNotifier {
  final _authService = AuthServices();
  var isFetching = false;
  late Data? data;

  Future getProfileData() async {
    isFetching = true;
    notifyListeners();
    data = await _authService.profile();
    isFetching = false;
    notifyListeners();
  }

  ProfileProvider() {
    getProfileData;
  }
}
