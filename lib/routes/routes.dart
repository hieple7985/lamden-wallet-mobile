/// Created by nghinv on Mon Jun 27 2022

import 'package:flutter/material.dart';
import 'package:flutter_base/models/account/account.dart';
import 'package:flutter_base/views/account/account_detail_page.dart';
import 'package:flutter_base/views/account/account_page.dart';
import 'package:flutter_base/views/account/add_account_page.dart';
import 'package:flutter_base/views/account/create_account_page.dart';
import 'package:flutter_base/views/account/create_account_existing_page.dart';
import 'package:flutter_base/views/todo/todo_page.dart';
import 'package:flutter_base/views/token/add_token_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_base/views/dashboard/dashboard_page.dart';
import 'package:flutter_base/views/login/login_page.dart';

part 'route_config.dart';

class Routes {
  static GoRouter route = GoRouter(
    initialLocation: RoutePaths.account,
    urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: true,
    redirect: (state) {
      return null;
    },
    routes: <GoRoute>[
      GoRoute(
        name: RouteNames.login,
        path: RoutePaths.login,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),
      GoRoute(
        name: RouteNames.account,
        path: RoutePaths.account,
        builder: (BuildContext context, GoRouterState state) =>
            const AccountPage(),
      ),
      GoRoute(
        name: RouteNames.accountDetail,
        path: RoutePaths.accountDetail,
        builder: (BuildContext context, GoRouterState state) {
          return AccountDetailPage(
            account: state.extra as Account,
          );
        },
      ),
      GoRoute(
        name: RouteNames.addAccount,
        path: RoutePaths.addAccount,
        builder: (BuildContext context, GoRouterState state) =>
            const AddAccountPage(),
      ),
      GoRoute(
        name: RouteNames.createAccount,
        path: RoutePaths.createAccount,
        builder: (BuildContext context, GoRouterState state) =>
            const CreateAccountPage(),
      ),
      GoRoute(
        name: RouteNames.createAccountExisting,
        path: RoutePaths.createAccountExisting,
        builder: (BuildContext context, GoRouterState state) =>
            const CreateAccountExistingPage(),
      ),
      GoRoute(
        name: RouteNames.addToken,
        path: RoutePaths.addToken,
        builder: (BuildContext context, GoRouterState state) =>
            const AddTokenPage(),
      ),
      GoRoute(
        name: RouteNames.home,
        path: RoutePaths.home,
        builder: (BuildContext context, GoRouterState state) =>
            const DashboardPage(),
      ),
      GoRoute(
        name: RouteNames.todo,
        path: RoutePaths.todo,
        builder: (BuildContext context, GoRouterState state) =>
            const TodoPage(),
      ),
    ],
  );
}
