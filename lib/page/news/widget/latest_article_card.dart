import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';
import 'package:timeago/timeago.dart' as timeago;

class LatestArticleCard extends StatelessWidget {
  const LatestArticleCard({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: article.readed ? const Color(0xFFF5F5F5) : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(4, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                article.imageUrl,
                width: 90,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    article.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    timeago.format(article.publicationDate),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF9A9A9A),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
