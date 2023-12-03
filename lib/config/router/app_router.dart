
import 'package:games/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/comercio-exterior',
      builder: (context, state) => const ComercioExteriorScreen(),
    ),

    GoRoute(
      path: '/software',
      builder: (context, state) => const SoftwareScreen(),
    ),
  ]
);