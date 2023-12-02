import 'package:go_router/go_router.dart';
import 'package:weight_tracker/models/weight_model.dart';
import 'package:weight_tracker/screens/form/form_screen.dart';
import 'package:weight_tracker/screens/list/list_screen.dart';
import 'package:weight_tracker/screens/login/login_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => const ListScreen(),
        routes: [
          GoRoute(
            path: 'add',
            builder: (context, state) => const FormScreen(),
          ),
          GoRoute(
            path: 'edit',
            builder: (context, state) => FormScreen(
              existingWeightModel: (state.extra as Map<String, dynamic>)['weight'] as WeightModel,
            ),
          ),
        ],
      ),
    ],
  );
}
