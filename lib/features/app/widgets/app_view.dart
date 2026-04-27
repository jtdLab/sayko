part of '../app.dart';

class AppView extends HookWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();

    final status = useBlocSelector(cubit, (AppState state) => state.status);

    return switch (status) {
      AppStatus.authenticated => const AppViewAuthenticated(),
      AppStatus.authenticatedAndAccountCreated =>
        const AppViewAuthenticatedAndAccountCreated(),
      AppStatus.authenticatedAndAccountCreatedAndOnboarded =>
        const AppViewAuthenticatedAndAccountCreatedAndOnboarded(),
      AppStatus.authenticatedAndVerified =>
        const AppViewAuthenticatedAndVerified(),
      AppStatus.unauthenticated => const AppViewUnauthenticated(),
    };
  }
}

class AppViewAuthenticated extends HookWidget {
  const AppViewAuthenticated({super.key});

  @override
  Widget build(BuildContext context) {
    return WouterSwitch(
      routes: {
        '/verify-email': (context, args) => BlocProvider(
          create: (context) => VerifyEmailCubit(authRepository: context.read()),
          child: const VerifyEmailPage(),
        ),
      },
      fallback: const Reset(to: ['/verify-email']),
    );
  }
}

class AppViewAuthenticatedAndVerified extends HookWidget {
  const AppViewAuthenticatedAndVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return WouterSwitch(
      routes: {
        '/account-create': (context, args) => BlocProvider(
          create: (context) =>
              AccountCreateCubit(userDataRepository: context.read()),
          child: const AccountCreatePage(),
        ),
      },
      fallback: const Reset(to: ['/account-create']),
    );
  }
}

class AppViewAuthenticatedAndAccountCreated extends HookWidget {
  const AppViewAuthenticatedAndAccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return WouterSwitch(
      routes: {
        '/onboarding/:_(.*)': (context, args) => const OnboardingShell(),
      },
      fallback: const Reset(to: ['/onboarding/welcome']),
    );
  }
}

class AppViewAuthenticatedAndAccountCreatedAndOnboarded extends HookWidget {
  const AppViewAuthenticatedAndAccountCreatedAndOnboarded({super.key});

  @override
  Widget build(BuildContext context) {
    return WouterSwitch(
      routes: {
        '/auth/:_(.*)': (context, args) => const Reset(to: ['/today']),
        '/account-create': (context, args) => const Reset(to: ['/today']),
        '/onboarding/:_(.*)': (context, args) => const Reset(to: ['/today']),
      },
      fallback: PlatformWouter(
        routes: {
          '/settings-appearance': (context, args) => BlocProvider(
            create: (context) =>
                SettingsAppearanceCubit(appDataRepository: context.read()),
            child: const SettingsAppearancePage(),
          ),
          '/settings-system-language': (context, args) =>
              const SettingsSystemLanguagePage(),
          '/player': (context, args) => const PlayerPage(),
          '/profile': (context, args) => const Reset(to: ['/settings']),
          '/home': (context, args) => const Reset(to: ['/today']),
          '/:_(today|library|settings)': (context, args) =>
              const LaunchpadShell(),
          '/:_(.*)': (context, args) => const NotFoundPage(),
        },
      ),
    );
  }
}

class AppViewUnauthenticated extends HookWidget {
  const AppViewUnauthenticated({super.key});

  @override
  Widget build(BuildContext context) {
    return WouterSwitch(
      routes: {
        '/auth/:_(.*)': (context, args) => PlatformWouter(
          base: '/auth',
          routes: {
            '/': (context, args) => const AuthPage(),
            '/login': (context, args) => BlocProvider(
              create: (context) => LoginCubit(authRepository: context.read()),
              child: const LoginPage(),
            ),
            '/login-password': (context, args) => BlocProvider(
              create: (context) =>
                  LoginPasswordCubit(authRepository: context.read()),
              child: const LoginPasswordPage(),
            ),
            '/password-reset': (context, args) => BlocProvider(
              create: (context) =>
                  PasswordResetCubit(authRepository: context.read()),
              child: const PasswordResetPage(),
            ),
            '/sign-up': (context, args) => BlocProvider(
              create: (context) => SignUpCubit(authRepository: context.read()),
              child: const SignUpPage(),
            ),
            '/sign-up-password': (context, args) => BlocProvider(
              create: (context) =>
                  SignUpPasswordCubit(authRepository: context.read()),
              child: const SignUpPasswordPage(),
            ),
            '/:_(.*)': (context, args) => const Reset(to: ['/auth']),
          },
        ),
      },
      fallback: const Reset(to: ['/auth']),
    );
  }
}
