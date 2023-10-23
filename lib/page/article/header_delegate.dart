import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forestvpn_test/page/news/widget/featured_card.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  const HeaderDelegate(this.article, this.withHero);

  final Article article;
  final bool withHero;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      children: [
        Hero(
          tag: withHero ? article : Object(),
          child: FeaturedCard(
            article: article,
            expand: true,
          ),
        ),
        Positioned(
          left: 20,
          top: 24,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SafeArea(
              child: SvgPicture.asset(
                'assets/icons/back.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 500;

  @override
  double get minExtent => 380;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
