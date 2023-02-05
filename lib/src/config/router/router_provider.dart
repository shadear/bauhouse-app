import 'package:bauhouse/src/config/config.dart';
import 'package:bauhouse/src/data/data.dart';
import 'package:bauhouse/src/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppRoute {
  products,
  product,
  addProduct,
  editProduct,
  profile,
  editProfile,
  login,
  register,
  verification,
  accountType,
  accountDetails,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return GoRouter(
      initialLocation: '/login',
      navigatorKey: _rootNavigatorKey,
      refreshListenable: GoRouterRefreshStream(
        authRepository.authStateChanges(),
      ),
      // debugLogDiagnostics: true,
      redirect: (context, state) {
        final isLoggedIn = authRepository.currentUser != null;

        if (isLoggedIn) {
          if (state.subloc.startsWith('/login')) {
            return '/products';
          }
        } else if (state.subloc.startsWith('/products') ||
            state.subloc.startsWith('/profile')) {
          return '/login';
        }

        return null;
      },
      routes: [
        GoRoute(
          name: AppRoute.products.name,
          path: '/products',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: const ProductsPage(),
              key: state.pageKey,
            );
          },
          routes: [
            GoRoute(
              name: AppRoute.addProduct.name,
              path: 'add',
              pageBuilder: (context, state) {
                return MaterialPage(
                  child: const ProductsPage(),
                  key: state.pageKey,
                );
              },
            ),
            GoRoute(
              name: AppRoute.product.name,
              path: ':id',
              pageBuilder: (context, state) {
                return MaterialPage(
                  child: const ProductsPage(),
                  key: state.pageKey,
                );
              },
              routes: [
                GoRoute(
                  name: AppRoute.editProduct.name,
                  path: 'edit',
                  pageBuilder: (context, state) {
                    return MaterialPage(
                      child: const ProductsPage(),
                      key: state.pageKey,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.profile.name,
          path: '/profile',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: const ProfilePage(),
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          name: AppRoute.register.name,
          path: '/register',
          pageBuilder: (context, state) {
            return MaterialPage(
              fullscreenDialog: true,
              child: const RegisterPage(),
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          name: AppRoute.accountType.name,
          path: '/account_type',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: const AccountTypePage(),
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          name: AppRoute.accountDetails.name,
          path: '/account_details',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: const AccountDetailsPage(),
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          name: AppRoute.login.name,
          path: '/login',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: const LoginPage(),
              key: state.pageKey,
            );
          },
        ),
      ],
      //errorBuilder: (context, state) => const NotFoundScreen(),
    );
  },
);
