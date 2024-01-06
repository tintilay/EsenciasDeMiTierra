import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/backend/supabase/supabase.dart';
import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
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

  void update(BaseAuthUser newUser) {
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
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
        ),
        FFRoute(
          name: 'ProfileArtistaPage',
          path: '/profileArtistaPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ProfileArtistaPageWidget(
              parametroUsuario: params.getParam<UsuariosRow>(
                  'parametroUsuario', ParamType.SupabaseRow),
            ),
          ),
        ),
        FFRoute(
          name: 'profileMenuPage',
          path: '/profileMenuPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ProfileMenuPageWidget(),
          ),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'NewsPage',
          path: '/newsPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NewsPageWidget(),
          ),
        ),
        FFRoute(
          name: 'Home19PropertyAppbookingapp',
          path: '/home19PropertyAppbookingapp',
          builder: (context, params) => Home19PropertyAppbookingappWidget(),
        ),
        FFRoute(
          name: 'Home20SearchArticles',
          path: '/home20SearchArticles',
          builder: (context, params) => Home20SearchArticlesWidget(),
        ),
        FFRoute(
          name: 'CongratulationsPage',
          path: '/congratulationsPage',
          builder: (context, params) => CongratulationsPageWidget(),
        ),
        FFRoute(
          name: 'List13PropertyListview',
          path: '/list13PropertyListview',
          builder: (context, params) => List13PropertyListviewWidget(),
        ),
        FFRoute(
          name: 'ArtistCreateProfilePage',
          path: '/CrearPerilArtistaIndividual',
          requireAuth: true,
          builder: (context, params) => ArtistCreateProfilePageWidget(),
        ),
        FFRoute(
          name: 'Gestion_Noticias',
          path: '/gestion_noticias',
          builder: (context, params) => GestionNoticiasWidget(),
        ),
        FFRoute(
          name: 'Gestion_Galerias',
          path: '/gestion_galerias',
          builder: (context, params) => GestionGaleriasWidget(),
        ),
        FFRoute(
          name: 'Gestion_Disciplinas',
          path: '/gestion_disciplinas',
          builder: (context, params) => GestionDisciplinasWidget(),
        ),
        FFRoute(
          name: 'SeleccionarRol',
          path: '/seleccionarRol',
          requireAuth: true,
          builder: (context, params) => SeleccionarRolWidget(),
        ),
        FFRoute(
          name: 'InicioPage',
          path: '/inicioPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'InicioPage')
              : InicioPageWidget(),
        ),
        FFRoute(
          name: 'Gestion_Inicio',
          path: '/gestion_inicio',
          builder: (context, params) => GestionInicioWidget(),
        ),
        FFRoute(
          name: 'Gestion_Eventos',
          path: '/gestion_eventos',
          builder: (context, params) => GestionEventosWidget(),
        ),
        FFRoute(
          name: 'Gestion_Usuarios',
          path: '/gestion_usuarios',
          builder: (context, params) => GestionUsuariosWidget(),
        ),
        FFRoute(
          name: 'Gestion_Obras',
          path: '/gestion_obras',
          builder: (context, params) => GestionObrasWidget(),
        ),
        FFRoute(
          name: 'SubirObra',
          path: '/subirObra',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'SubirObra')
              : NavBarPage(
                  initialPage: 'SubirObra',
                  page: SubirObraWidget(),
                ),
        ),
        FFRoute(
          name: 'GaleriasPage',
          path: '/galeriasPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'GaleriasPage')
              : GaleriasPageWidget(),
        ),
        FFRoute(
          name: 'Artistas',
          path: '/artistas',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Artistas')
              : ArtistasWidget(),
        ),
        FFRoute(
          name: 'List21ProjectGridOverviewResponsive',
          path: '/list21ProjectGridOverviewResponsive',
          builder: (context, params) =>
              List21ProjectGridOverviewResponsiveWidget(),
        ),
        FFRoute(
          name: 'CrearPerfilInvitado',
          path: '/crearPerfilInvitado',
          builder: (context, params) => CrearPerfilInvitadoWidget(),
        ),
        FFRoute(
          name: 'Home02List',
          path: '/home02List',
          builder: (context, params) => Home02ListWidget(),
        ),
        FFRoute(
          name: 'ProfilePageCopy',
          path: '/profilePageCopy',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ProfilePageCopyWidget(),
          ),
        ),
        FFRoute(
          name: 'GaleriasPageCopy',
          path: '/galeriasPageCopy',
          builder: (context, params) => GaleriasPageCopyWidget(),
        ),
        FFRoute(
          name: 'educacionPage',
          path: '/educacionPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'educacionPage')
              : NavBarPage(
                  initialPage: 'educacionPage',
                  page: EducacionPageWidget(),
                ),
        ),
        FFRoute(
          name: 'Gestion_educacion',
          path: '/gestion_educacion',
          builder: (context, params) => GestionEducacionWidget(),
        ),
        FFRoute(
          name: 'DetalleNoticia',
          path: '/detalleNoticia',
          builder: (context, params) => DetalleNoticiaWidget(
            parametrosNoticia: params.getParam<NoticiasRow>(
                'parametrosNoticia', ParamType.SupabaseRow),
          ),
        ),
        FFRoute(
          name: 'verPDF',
          path: '/verPDF',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: VerPDFWidget(
              parametrosRecursoEducativo:
                  params.getParam<RecursosEducativosRow>(
                      'parametrosRecursoEducativo', ParamType.SupabaseRow),
            ),
          ),
        ),
        FFRoute(
          name: 'DetalleObra',
          path: '/detalleObra',
          builder: (context, params) => DetalleObraWidget(
            paramObra:
                params.getParam<ObrasRow>('paramObra', ParamType.SupabaseRow),
          ),
        ),
        FFRoute(
          name: 'Eventos',
          path: '/eventos',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EventosWidget(),
          ),
        ),
        FFRoute(
          name: 'DetalleEvento',
          path: '/detalleEvento',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: DetalleEventoWidget(
              parametrosEvento: params.getParam<EventosRow>(
                  'parametrosEvento', ParamType.SupabaseRow),
            ),
          ),
        ),
        FFRoute(
          name: 'detalleGaleria',
          path: '/detalleGaleria',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: DetalleGaleriaWidget(
              paramGaleria: params.getParam<GaleriasRow>(
                  'paramGaleria', ParamType.SupabaseRow),
            ),
          ),
        ),
        FFRoute(
          name: 'Gestion_Tecnicas',
          path: '/gestion_tecnicas',
          builder: (context, params) => GestionTecnicasWidget(),
        ),
        FFRoute(
          name: 'Gestion_Material',
          path: '/gestion_materiales',
          builder: (context, params) => GestionMaterialWidget(),
        ),
        FFRoute(
          name: 'Gestion_Estilos',
          path: '/gestion_estilos',
          builder: (context, params) => GestionEstilosWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'verPDFManual',
          path: '/verPDFManual',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: VerPDFManualWidget(),
          ),
        ),
        FFRoute(
          name: 'TerminosYCondiciones',
          path: '/terminosYCondiciones',
          builder: (context, params) => TerminosYCondicionesWidget(),
        ),
        FFRoute(
          name: 'EditarrPerfilInvitado',
          path: '/editarrPerfilInvitado',
          builder: (context, params) => EditarrPerfilInvitadoWidget(
            paramUsuario: params.getParam<UsuariosRow>(
                'paramUsuario', ParamType.SupabaseRow),
          ),
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
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/darck_mode.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
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
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
