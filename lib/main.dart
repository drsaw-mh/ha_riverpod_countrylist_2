import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hs_country_list/ui/pages/home.dart';

import 'ui/pages/detail_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: GoRouter(routes: [
          GoRoute(
              path: '/',
              builder: (context, routeState) {
                return const Home();
              }),
          GoRoute(
            path: '/name/:name',
            builder: (context, routeState) {
              String? name = routeState.pathParameters['name'] ?? '';
              return CountryDetailPage(name: name);
            },
          )
        ]));
  }
}
