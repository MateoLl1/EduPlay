import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/config/config.dart';
import 'package:games/presentation/providers/providers.dart';

void main() => runApp(
   const ProviderScope(child: MyApp())
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final isDark = ref.watch(darkThemeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'EduPlay',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 0,isDark: isDark).getTheme(),
    );
  }
}