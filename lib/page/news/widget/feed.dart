import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forestvpn_test/bloc/news_bloc.dart';
import 'package:forestvpn_test/page/news/widget/featured_card.dart';
import 'package:forestvpn_test/page/news/widget/latest_article_card.dart';
import 'package:forestvpn_test/repositories/news/repository.dart';

import '../../page.dart';

class Feed extends StatefulWidget {
  const Feed({
    super.key,
    required this.featuredArticles,
    required this.latestArticles,
  });

  final List<Article> featuredArticles;
  final List<Article> latestArticles;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Text(
            'Featured',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: widget.featuredArticles.length,
            itemBuilder: (context, index) {
              return Hero(
                tag: widget.featuredArticles[index],
                child: GestureDetector(
                  onTap: () {
                    context.read<NewsBloc>().add(
                          NewsEvent.markRead(widget.featuredArticles[index].id),
                        );
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => ArticlePage(
                          article: widget.featuredArticles[index],
                        ),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  },
                  child: FeaturedCard(
                    expand: false,
                    article: widget.featuredArticles[index],
                  ),
                ),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Text(
            'Latest news',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: widget.latestArticles.length,
            separatorBuilder: (_, __) => const SizedBox(height: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<NewsBloc>().add(
                        NewsEvent.markRead(widget.featuredArticles[index].id),
                      );
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ArticlePage(
                        withHero: false,
                        article: widget.featuredArticles[index],
                      ),
                    ),
                  );
                },
                child: LatestArticleCard(
                  article: widget.latestArticles[index],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
