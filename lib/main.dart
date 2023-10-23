import 'package:flutter/material.dart';
import 'package:forestvpn_test/di/get_it.dart';

import 'auto_route/app_router.dart';

void main() {
  configureDependencies();
  runApp(const ForestVPNTestApp());
}

class ForestVPNTestApp extends StatelessWidget {
  const ForestVPNTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ForestVPN test',
      routerConfig: getIt.get<AppRouter>().config(),
    );
  }
}
