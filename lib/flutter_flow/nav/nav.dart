import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

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

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : HomePageBWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/splash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : HomePageBWidget(),
          routes: [
            FFRoute(
              name: 'Home_Page_B',
              path: 'homePageB',
              builder: (context, params) => HomePageBWidget(),
            ),
            FFRoute(
              name: 'Home_Page',
              path: 'homePage',
              builder: (context, params) => HomePageWidget(
                sn: params.getParam('sn', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Factura',
              path: 'factura',
              builder: (context, params) => FacturaWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
                sn: params.getParam('sn', ParamType.int),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'FacturaMoney',
              path: 'facturaMoney',
              builder: (context, params) => FacturaMoneyWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
                sn: params.getParam('sn', ParamType.int),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Emailout',
              path: 'emailout',
              builder: (context, params) => EmailoutWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'abrircuenta',
              path: 'abrircuenta',
              builder: (context, params) => AbrircuentaWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Ruleta',
              path: 'ruleta',
              builder: (context, params) => RuletaWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'InfoproductoMoney',
              path: 'infoproductoMoney',
              builder: (context, params) => InfoproductoMoneyWidget(
                producto: params.getParam('producto', ParamType.String),
                precio: params.getParam('precio', ParamType.String),
                id: params.getParam('id', ParamType.int),
                sn: params.getParam('sn', ParamType.int),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'InfoproductoQR',
              path: 'infoproductoQR',
              builder: (context, params) => InfoproductoQRWidget(
                producto: params.getParam('producto', ParamType.String),
                precio: params.getParam('precio', ParamType.String),
                id: params.getParam('id', ParamType.int),
                sn: params.getParam('sn', ParamType.int),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RuletaHome',
              path: 'ruletaHome',
              builder: (context, params) => RuletaHomeWidget(),
            ),
            FFRoute(
              name: 'RuletaHomeWin',
              path: 'ruletaHomeWin',
              builder: (context, params) => RuletaHomeWinWidget(
                premio: params.getParam('premio', ParamType.String),
                txtslot: params.getParam('txtslot', ParamType.String),
                slot: params.getParam('slot', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Infofinanciero',
              path: 'infofinanciero',
              builder: (context, params) => InfofinancieroWidget(),
            ),
            FFRoute(
              name: 'Infoservicios',
              path: 'infoservicios',
              builder: (context, params) => InfoserviciosWidget(
                slot: params.getParam('slot', ParamType.int),
                pricex: params.getParam('pricex', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Infoserviciosnm',
              path: 'infoserviciosnm',
              builder: (context, params) => InfoserviciosnmWidget(
                slot: params.getParam('slot', ParamType.int),
                nmfinsus: params.getParam('nmfinsus', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.int),
                ph: params.getParam('ph', ParamType.String),
                pricex: params.getParam('pricex', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Infoserviciosconf',
              path: 'infoserviciosconfirma',
              builder: (context, params) => InfoserviciosconfWidget(
                slot: params.getParam('slot', ParamType.int),
                nmfinsus: params.getParam('nmfinsus', ParamType.String),
                mingresado: params.getParam('mingresado', ParamType.String),
                ph: params.getParam('ph', ParamType.String),
                pricex: params.getParam('pricex', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.int),
                mdep: params.getParam('mdep', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'FacturaRecarga',
              path: 'facturaRecarga',
              builder: (context, params) => FacturaRecargaWidget(
                monto: params.getParam('monto', ParamType.String),
                cambio: params.getParam('cambio', ParamType.String),
                ph: params.getParam('ph', ParamType.String),
                nombre: params.getParam('nombre', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Infosolicitarrec',
              path: 'srecibo',
              builder: (context, params) => InfosolicitarrecWidget(
                slot: params.getParam('slot', ParamType.int),
                pricex: params.getParam('pricex', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Infosrecenviado',
              path: 'sreciboenviado',
              builder: (context, params) => InfosrecenviadoWidget(
                slot: params.getParam('slot', ParamType.int),
                pricex: params.getParam('pricex', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'salidasorteo',
              path: 'salidasorteo',
              builder: (context, params) => SalidasorteoWidget(
                dappref: params.getParam('dappref', ParamType.String),
                idp: params.getParam('idp', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Infoserviciosfail',
              path: 'infoserviciosfail',
              builder: (context, params) => InfoserviciosfailWidget(
                slot: params.getParam('slot', ParamType.int),
                nmfinsus: params.getParam('nmfinsus', ParamType.String),
                vmcprice: params.getParam('vmcprice', ParamType.int),
                ph: params.getParam('ph', ParamType.String),
                pricex: params.getParam('pricex', ParamType.String),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
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
    return deserializeParam<T>(
      param,
      type,
      isList,
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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
