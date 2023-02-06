import 'package:bauhouse/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(context, ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Bauhouse App',
      routerConfig: goRouter,
    );
  }
}
