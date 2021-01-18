import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search/classes/themeModel.dart';
// import 'package:search/components/moPubAdManager.dart';
// import 'package:search/components/facebookAdManager.dart';
import 'package:search/serviceLocator.dart';
import 'package:search/services/checkDatabaseUpdates.dart';
import 'components/adManager.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator().then(
    (value) => runApp(
      ChangeNotifierProvider<ThemeModel>(
        create: (BuildContext context) => ThemeModel(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FacebookAdManager();
    // MopubBannerAd();
    displayBanner();
    checkDatabaseUpdates();
    return new MaterialApp(
        title: "Hans Wehr Dictionary",
        theme: Provider.of<ThemeModel>(context, listen: true).currentTheme,
        initialRoute: '/search',
        routes: routes);
  }
}
