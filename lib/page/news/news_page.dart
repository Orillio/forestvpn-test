import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forestvpn_test/bloc/news_bloc.dart';
import 'package:forestvpn_test/page/news/widget/custom_app_bar.dart';
import 'package:forestvpn_test/page/news/widget/feed.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(NewsEvent.fetchArticles());
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<NewsBloc>();
    return bloc.state.map(
      initial: (_) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
      fetched: (fetchedState) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
            body: Column(
              children: [
                const CustomAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Feed(
                      featuredArticles: fetchedState.featuredArticles,
                      latestArticles: fetchedState.latestArticles,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
