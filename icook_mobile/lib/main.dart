import 'package:flutter/material.dart';
import 'package:icook_mobile/core/services/key_storage_service.dart';
import 'package:icook_mobile/locator.dart';
import 'package:icook_mobile/provider_setup.dart';
import 'package:icook_mobile/ui/router.dart';
import 'package:icook_mobile/ui/ui_helper.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final navigationService = locator<NavigationService>();
  final keystorage = locator<KeyStorageService>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: Constants.appName,
        theme: Constants.lightTheme,
        darkTheme: Constants.darkTheme,
        navigatorKey: navigationService.navigatorKey,
        onGenerateRoute: Router.generateRoute,
        home: TestRoute(),
      ),
    );
  }
}

class TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
