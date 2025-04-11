import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:odyssey/core/helper_function/on_generate_routes.dart';
import 'package:odyssey/core/services/shared_preferences_singleton.dart';
import 'package:odyssey/features/splash/presentaion/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await prefs.init();
  runApp(const OdysseyApp());
}

class OdysseyApp extends StatelessWidget {
  const OdysseyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:[
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashScreen.routeName,
    );
  }
}

