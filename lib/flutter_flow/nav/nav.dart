import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  SaborLocalAuthUser? initialUser;
  SaborLocalAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(SaborLocalAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : TelaDeAberturaWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : TelaDeAberturaWidget(),
        ),
        FFRoute(
          name: TelaDeAberturaWidget.routeName,
          path: TelaDeAberturaWidget.routePath,
          builder: (context, params) => TelaDeAberturaWidget(),
        ),
        FFRoute(
          name: EnderecoWidget.routeName,
          path: EnderecoWidget.routePath,
          builder: (context, params) => EnderecoWidget(),
        ),
        FFRoute(
          name: SucessoWidget.routeName,
          path: SucessoWidget.routePath,
          builder: (context, params) => SucessoWidget(),
        ),
        FFRoute(
          name: CodVerificacaoWidget.routeName,
          path: CodVerificacaoWidget.routePath,
          builder: (context, params) => CodVerificacaoWidget(),
        ),
        FFRoute(
          name: EmailNumberWidget.routeName,
          path: EmailNumberWidget.routePath,
          builder: (context, params) => EmailNumberWidget(),
        ),
        FFRoute(
          name: NameCpfWidget.routeName,
          path: NameCpfWidget.routePath,
          builder: (context, params) => NameCpfWidget(),
        ),
        FFRoute(
          name: SenhaWidget.routeName,
          path: SenhaWidget.routePath,
          builder: (context, params) => SenhaWidget(),
        ),
        FFRoute(
          name: CatalogodigitalWidget.routeName,
          path: CatalogodigitalWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Catalogodigital')
              : CatalogodigitalWidget(),
        ),
        FFRoute(
          name: VerProdutoWidget.routeName,
          path: VerProdutoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => VerProdutoWidget(
            catalogoID: params.getParam(
              'catalogoID',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CatagolodigitalStruct.fromSerializableMap,
            ),
            preco: params.getParam(
              'preco',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: EnderecoCopyWidget.routeName,
          path: EnderecoCopyWidget.routePath,
          builder: (context, params) => EnderecoCopyWidget(),
        ),
        FFRoute(
          name: SucessologinWidget.routeName,
          path: SucessologinWidget.routePath,
          builder: (context, params) => SucessologinWidget(),
        ),
        FFRoute(
          name: CardapioWidget.routeName,
          path: CardapioWidget.routePath,
          builder: (context, params) => CardapioWidget(),
        ),
        FFRoute(
          name: SucessoPagamentoWidget.routeName,
          path: SucessoPagamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SucessoPagamentoWidget(),
        ),
        FFRoute(
          name: TelaDeAberturaTabletWidget.routeName,
          path: TelaDeAberturaTabletWidget.routePath,
          builder: (context, params) => TelaDeAberturaTabletWidget(),
        ),
        FFRoute(
          name: CodVerificacaotabletWidget.routeName,
          path: CodVerificacaotabletWidget.routePath,
          builder: (context, params) => CodVerificacaotabletWidget(),
        ),
        FFRoute(
          name: EmailNumberTabletWidget.routeName,
          path: EmailNumberTabletWidget.routePath,
          builder: (context, params) => EmailNumberTabletWidget(),
        ),
        FFRoute(
          name: EnderecoTabletWidget.routeName,
          path: EnderecoTabletWidget.routePath,
          builder: (context, params) => EnderecoTabletWidget(),
        ),
        FFRoute(
          name: SucessoTabletWidget.routeName,
          path: SucessoTabletWidget.routePath,
          builder: (context, params) => SucessoTabletWidget(),
        ),
        FFRoute(
          name: LoginTabletWidget.routeName,
          path: LoginTabletWidget.routePath,
          builder: (context, params) => LoginTabletWidget(),
        ),
        FFRoute(
          name: NameCpfTabletWidget.routeName,
          path: NameCpfTabletWidget.routePath,
          builder: (context, params) => NameCpfTabletWidget(),
        ),
        FFRoute(
          name: SenhaTabletWidget.routeName,
          path: SenhaTabletWidget.routePath,
          builder: (context, params) => SenhaTabletWidget(),
        ),
        FFRoute(
          name: SucessoPagamentoTabletWidget.routeName,
          path: SucessoPagamentoTabletWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SucessoPagamentoTabletWidget(),
        ),
        FFRoute(
          name: CatalogodigitalTabletWidget.routeName,
          path: CatalogodigitalTabletWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'CatalogodigitalTablet')
              : CatalogodigitalTabletWidget(),
        ),
        FFRoute(
          name: SucessoLoginnTabletWidget.routeName,
          path: SucessoLoginnTabletWidget.routePath,
          builder: (context, params) => SucessoLoginnTabletWidget(),
        ),
        FFRoute(
          name: VerProdutotabletWidget.routeName,
          path: VerProdutotabletWidget.routePath,
          requireAuth: true,
          builder: (context, params) => VerProdutotabletWidget(
            catalogoID: params.getParam(
              'catalogoID',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CatagolodigitalStruct.fromSerializableMap,
            ),
            preco: params.getParam(
              'preco',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: CarrinhoWidget.routeName,
          path: CarrinhoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'carrinho')
              : CarrinhoWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: PagamentoWidget.routeName,
          path: PagamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PagamentoWidget(),
        ),
        FFRoute(
          name: PagamentoPendenteWidget.routeName,
          path: PagamentoPendenteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PagamentoPendenteWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/telaDeAbertura';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/0f8abb6e-d674-4427-b550-dc8968deb550.png',
                      width: 1000.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
