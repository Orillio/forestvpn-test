import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.article,
    required this.expand,
  });

  final Article article;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: expand
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Container(
        height: expand ? 500 : 300,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 20,
              offset: const Offset(4, 4),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Image.network(
              article.imageUrl,
              height: expand ? 500 : 300,
              width: expand ? null : MediaQuery.of(context).size.width - 56,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 40,
              right: 40,
              child: Text(
                article.title,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
