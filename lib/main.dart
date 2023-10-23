import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forestvpn_test/bloc/news_bloc.dart';
import 'package:forestvpn_test/di/get_it.dart';
import 'package:forestvpn_test/page/news/news_page.dart';

void main() {
  configureDependencies();
  runApp(const ForestVPNTestApp());
}

class ForestVPNTestApp extends StatelessWidget {
  const ForestVPNTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsBloc(),
      child: const MaterialApp(
        title: 'ForestVPN test',
        home: NewsPage(),
      ),
    );
  }
}
