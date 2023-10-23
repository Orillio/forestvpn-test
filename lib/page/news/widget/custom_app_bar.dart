import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forestvpn_test/bloc/news_bloc.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Stack(
          children: <Widget>[
            const Positioned.fill(
              child: Center(
                child: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/back.svg',
                  ),
                  CupertinoButton(
                    minSize: null,
                    padding: EdgeInsets.zero,
                    pressedOpacity: 0.7,
                    child: const Text(
                      'Mark all read',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      context.read<NewsBloc>().add(NewsEvent.markAllRead());
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
