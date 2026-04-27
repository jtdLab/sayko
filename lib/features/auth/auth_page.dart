part of 'auth.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final spacings = theme.spacings;

    final padding = EdgeInsets.symmetric(horizontal: spacings.three);

    return FScaffold(
      child: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: padding,
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 430),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Spacer(),
                        AuthLogo(),
                        AuthTitle(),
                        SaykoGap.twelve(),
                        AuthSignUpButton(),
                        SaykoGap.one(),
                        AuthLoginButton(),
                        SaykoGap.twelve(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
