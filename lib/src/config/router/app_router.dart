import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_task2/src/presentation/pages/home_page.dart';
import 'package:flutter_bloc_task2/src/presentation/pages/main_page.dart';
import 'package:flutter_bloc_task2/src/presentation/pages/product_page.dart';
import 'package:flutter_bloc_task2/src/presentation/pages/search_page.dart';

part 'app_router.gr.dart';

// Note: Here is your router using package auto_route.
// Here you should write routes for your app.
// Example:
/* 
AutoRoute(
  page: ProductRoute.page,
),
*/
// Docs: https://pub.dev/packages/auto_route
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
            ),
            AutoRoute(
              page: SearchRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: ProductRoute.page,
        ),
      ];
}
