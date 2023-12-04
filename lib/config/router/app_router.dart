
import 'package:games/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      builder: (context, state) => const TutorialApp(),
    ),

    GoRoute(
      path: '/perfil',
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingScreen(),
    ),

    GoRoute(
      path: '/favorite',
      builder: (context, state) => const FavoriteScreen(),
    ),
    
    GoRoute(
      path: '/completados',
      builder: (context, state) => const CompletadosScreen(),
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