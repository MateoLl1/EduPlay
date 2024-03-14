
import 'package:go_router/go_router.dart';
import 'package:games/presentation/screens/screens.dart';

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

    GoRoute(
      path: '/introduction-program',
      builder: (context, state) => const IntroduccionProScreen(),
    ),
    GoRoute(
      path: '/algoritmos-datos',
      builder: (context, state) => const AlgoritmosEstScreen(),
    ),
    GoRoute(
      path: '/desarrollo-web',
      builder: (context, state) => const DesarrolloWebScreen(),
    ),


    //! JUEGOS
    GoRoute(
      path: '/uno',
      builder: (context, state) => const JuegoUno(),
    ),
    


    
  ],
);