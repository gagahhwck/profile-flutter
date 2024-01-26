import 'package:flutter/material.dart';
import 'package:sso_uiii/model/response_application.dart';
import 'package:sso_uiii/services/app_service.dart';

class ApplicationProvider extends ChangeNotifier {
  final _applicationServices = AppServices();

  var isFetching = false;
  List<Datum> listApp = [];
  late ResponseApplications responseApplications;

  Future getListApp() async {
    isFetching = true;
    notifyListeners();
    listApp = await _applicationServices.getListApp();
    isFetching = false;
    notifyListeners();
  }

  ApplicationProvider() {
    getListApp();
  }
}
