import 'package:authentication_repository/authentication_repository.dart';
import 'package:block_freezed_practice/authentication_practice/authentication/splash/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

import '../home/view/home_page.dart';
import '../login/view/login_page.dart';
import 'bloc/authentication_bloc.dart';

class AuthenticationPracticeApp extends StatelessWidget {
  const AuthenticationPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => AuthenticationRepository(),
          dispose: (repository) => repository.dispose(),
        ),
        RepositoryProvider(create: (_) => UserRepository()),
      ],
      child: BlocProvider(
        lazy: false,
        create:
            (context) =>
        AuthenticationBloc(
          context.read<AuthenticationRepository>(),
          context.read<UserRepository>(),
        )
          ..add(AuthenticationSubscriptionRequested()),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticatedUser) {
              _navigator.pushAndRemoveUntil<void>(
                HomePage.route(),
                    (route) => false,
              );
            } else if (state is UnauthenticatedUser) {
              _navigator.pushAndRemoveUntil<void>(
                LoginPage.route(),
                    (route) => false,
              );
            }

          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
