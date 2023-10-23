import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forestvpn_test/page/article/header_delegate.dart';

import '../../repositories/news/repository.dart';

@RoutePage()
class ArticlePage extends StatefulWidget {
  const ArticlePage({
    super.key,
    required this.article,
    this.withHero = true,
  });

  final Article article;
  final bool withHero;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: HeaderDelegate(widget.article, widget.withHero),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  widget.article.description ?? 'No description',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
