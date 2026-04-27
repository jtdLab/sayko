import 'package:flutter/cupertino.dart' show CupertinoPage;
import 'package:flutter/material.dart' show MaterialPage;
import 'package:rxdart/rxdart.dart';
import 'package:sayko/core/provider.dart';
import 'package:sayko/platform.dart';
import 'package:sayko/ui/ui.dart';
import 'package:wouter/wouter.dart' as w;

export 'package:wouter/wouter.dart';

class WouterRouterDelegate extends w.WouterRouterDelegate {
  WouterRouterDelegate({required super.initial, required super.builder})
    : super(matcher: _routerDelegateMatcher) {
    addListener(() {
      final uri = Uri.parse(currentConfiguration);
      _queryParametersSubject.add(uri.queryParameters);
      print({
        'path': currentConfiguration,
        'queryParameters': uri.queryParameters,
      });
    });
  }
}

// Override the default cached Regexp matcher to handle query parameters.
w.PathMatcher _routerDelegateMatcher() {
  // Create a RegExp builder that caches compiled regular expressions.
  final regexpBuilder = w.cacheRegexpBuilder(w.pathToRegexp);

  // Return a PathMatcher that caches (path, pattern, prefix) lookups.
  return w.cache(
    (String path, String pattern, {bool prefix = true}) => w.regexpPathMatcher(
      Uri.parse(path).path,
      pattern,
      regexpBuilder: regexpBuilder, // Uses the cached RegExp builder
      prefix: false,
    ),
  );
}

final routeInformationParser = w.WouterRouteInformationParser(
  parse: (context, routeInformation) => routeInformation.uri.toString(),
);

final _queryParametersSubject = BehaviorSubject<Map<String, String>>.seeded({});

Map<String, String> get queryParameters => _queryParametersSubject.value;

Map<String, String> useQueryParameters() {
  final snapshot = useStream(_queryParametersSubject.stream);
  return snapshot.data ?? {};
}

class PlatformWouter extends StatelessWidget {
  const PlatformWouter({required this.routes, this.base = '', super.key});

  final String base;
  final w.WouterRoutes routes;

  @override
  Widget build(BuildContext context) {
    final platform = context.read<Platform>();

    final isMobile = platform == Platform.ios || platform == Platform.android;

    return w.Wouter(
      base: base,
      child: w.WouterNavigator(
        routes: routes,
        builder: (context, stack) => isMobile
            ? _Navigator(stack: stack)
            : Stack(alignment: Alignment.center, children: stack),
      ),
    );
  }
}

class _Navigator extends StatelessWidget {
  const _Navigator({required this.stack});

  final List<Widget> stack;

  @override
  Widget build(BuildContext context) {
    if (stack.isEmpty) {
      return const SizedBox.shrink();
    }

    final actions = context.wouter.actions;
    final pages = [
      for (var i = 0; i < stack.length; i++)
        _pageForPlatform('route-$i', stack[i]),
    ];

    return Navigator(
      pages: pages,
      // onDidRemovePage cannot veto or sync with wouter; onPopPage required
      // for system back button and iOS swipe-from-edge gesture coordination.
      // ignore: deprecated_member_use
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        actions.pop(result);
        return true;
      },
    );
  }

  Page<void> _pageForPlatform(String key, Widget child) {
    return switch (Platform.current) {
      Platform.ios => CupertinoPage(
        key: ValueKey(key),
        name: key,
        child: child,
      ),
      _ => MaterialPage(key: ValueKey(key), name: key, child: child),
    };
  }
}

extension PlayerSessionNavigation on BuildContext {
  Future<void> pushPlayerSession(String sessionId) {
    return wouter.actions.push<void>(
      '/player?session=${Uri.encodeQueryComponent(sessionId)}',
    );
  }
}
