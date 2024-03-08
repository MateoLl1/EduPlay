
import 'package:go_router/go_router.dart';
import 'package:games/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/fundamentos-programacion',
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
      routes: [
        GoRoute(
          path: 'curso/:id',
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '0';
            return CursoScreen(id: id);
          },
        )
      ]
    ),

    //! JUEGOS 

    GoRoute(
      path: '/fundamentos-programacion',
      builder: (context, state) => const FundamentosProgramacionScreen(),
    ),

    GoRoute(
      path: '/game-fun-pro',
      builder: (context, state) => const GameFunPro(),
    ),


    
  ],
);