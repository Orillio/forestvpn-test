import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../page/page.dart';

part 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: ArticleRoute.page,
        ),
        AutoRoute(
          initial: true,
          page: NewsRoute.page,
        ),
      ];
}
