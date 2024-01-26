import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sso_uiii/helper/shared_pref.dart';
import 'package:sso_uiii/provider/application_provider.dart';
import 'package:sso_uiii/provider/profile_provider.dart';
import 'package:sso_uiii/ui/pages/home_page.dart';
import 'package:sso_uiii/ui/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = SharedPref();
  final isLoggedIn = await sharedPref.read('token');
  runApp(MainApp(
    isLoggedIn: isLoggedIn,
  ));
}

class MainApp extends StatelessWidget {
  final String isLoggedIn;
  const MainApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileProvider()),
        ChangeNotifierProvider(create: (context) => ApplicationProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: isLoggedIn != 'false' ? HomePage() : LoginPage()),
    );
  }
}
