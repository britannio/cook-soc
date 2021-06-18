import 'package:cooksoc/core/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:cooksoc/core/asset_gen/fonts.gen.dart';

class CookSocApp extends StatelessWidget {
  const CookSocApp({Key? key}) : super(key: key);

  static final navigatorKey = router.navigatorKey;
  static final router = AppRouter();

  Widget _builder(BuildContext context, Widget? child) {
    child = OverlaySupport(child: child!);
    child = Portal(child: child);
    return child;
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      primarySwatch: Colors.amber,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
      fontFamily: FontFamily.balsamiqSans,
    );

    return MaterialApp.router(
      title: 'Cook Soc',
      restorationScopeId: 'root',
      builder: _builder,
      theme: theme,
      shortcuts: <LogicalKeySet, Intent>{...WidgetsApp.defaultShortcuts},
      // Debug/Performance flags
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
