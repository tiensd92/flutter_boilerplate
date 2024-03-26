import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dependencies/dependencies.dart';
import '../domain/domain.dart';
import 'di/configure_dependencies.dart';
import 'router/app_router.dart';

typedef FeatureCallBack = FutureOr Function();

class F {
  static Flavor flavor = Flavor.dev;
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      onGenerateTitle: (ctx) => S.of(ctx).app_name,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        _FallbackCupertinoLocalisationsDelegate(),
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  factory MyApp.dev() {
    F.flavor = Flavor.dev;
    configureDependencies();
    return MyApp();
  }

  factory MyApp.stag() {
    F.flavor = Flavor.stag;
    configureDependencies();
    return MyApp();
  }

  factory MyApp.prod() {
    F.flavor = Flavor.prod;
    configureDependencies();
    return MyApp();
  }
}

class _FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(_FallbackCupertinoLocalisationsDelegate old) => false;
}