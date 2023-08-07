import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DappCall {
  static Future<ApiCallResponse> call({
    String? amount = '',
    String? description = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'dapp',
      apiUrl: 'https://api.dapp.mx/v2/dapp-codes/',
      callType: ApiCallType.POST,
      headers: {
        'User-Agent': 'VMC 1.0',
        'Authorization':
            'Basic OjMxNzAwNzU1LThlMDAtNDkxMC04NzAyLTFmZjY5M2VjZTg5Zg==',
      },
      params: {
        'amount': amount,
        'description': description,
        'qr_source': 1,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic qr(dynamic response) => getJsonField(
        response,
        r'''$..qr_image''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic idref(dynamic response) => getJsonField(
        response,
        r'''$.data.reference_num''',
      );
}

class ProductosCall {
  static Future<ApiCallResponse> call({
    int? b,
    int? c,
    String? d = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'productos',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 4,
        'a': "productos",
        'b': b,
        'c': c,
        'd': d,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nprod(dynamic response) => getJsonField(
        response,
        r'''$[:].nprod''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
      );
  static dynamic idx(dynamic response) => getJsonField(
        response,
        r'''$[:].idx''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic pricex(dynamic response) => getJsonField(
        response,
        r'''$[:].pricex''',
      );
  static dynamic vmcprice(dynamic response) => getJsonField(
        response,
        r'''$[:].vmcprice''',
      );
  static dynamic vmc(dynamic response) => getJsonField(
        response,
        r'''$[:].vmc''',
      );
  static dynamic img(dynamic response) => getJsonField(
        response,
        r'''$[:].path''',
      );
  static dynamic invent(dynamic response) => getJsonField(
        response,
        r'''$[:].invent''',
      );
  static dynamic ds(dynamic response) => getJsonField(
        response,
        r'''$[:].ds''',
      );
  static dynamic slotx(dynamic response) => getJsonField(
        response,
        r'''$[:].slotx''',
      );
  static dynamic sn(dynamic response) => getJsonField(
        response,
        r'''$[:].sn''',
      );
  static dynamic idm(dynamic response) => getJsonField(
        response,
        r'''$[:].idm''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$[:].slot''',
      );
  static dynamic ivst(dynamic response) => getJsonField(
        response,
        r'''$[:].ivst''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
      );
  static dynamic register(dynamic response) => getJsonField(
        response,
        r'''$[:].register''',
      );
  static dynamic lupdate(dynamic response) => getJsonField(
        response,
        r'''$[:].lastupdate''',
      );
}

class InfoproductoCall {
  static Future<ApiCallResponse> call({
    int? b,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'infoproducto',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 3,
        'a': "info-producto",
        'b': b,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic npd(dynamic response) => getJsonField(
        response,
        r'''$.nprod''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.price''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$.foto''',
      );
  static dynamic ds(dynamic response) => getJsonField(
        response,
        r'''$.ds''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$.slot''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic vmcprice(dynamic response) => getJsonField(
        response,
        r'''$.vmcprice''',
      );
  static dynamic monto(dynamic response) => getJsonField(
        response,
        r'''$.monto''',
      );
  static dynamic idfac(dynamic response) => getJsonField(
        response,
        r'''$.idr''',
      );
  static dynamic niv(dynamic response) => getJsonField(
        response,
        r'''$.niv''',
      );
}

class InfoproductoSFCall {
  static Future<ApiCallResponse> call({
    int? b,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'infoproductoSF',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 3,
        'a': "info-producto-sf",
        'b': b,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic npd(dynamic response) => getJsonField(
        response,
        r'''$.nprod''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.price''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$.foto''',
      );
  static dynamic ds(dynamic response) => getJsonField(
        response,
        r'''$.ds''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$.slot''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic vmcprice(dynamic response) => getJsonField(
        response,
        r'''$.vmcprice''',
      );
  static dynamic monto(dynamic response) => getJsonField(
        response,
        r'''$.monto''',
      );
  static dynamic idfac(dynamic response) => getJsonField(
        response,
        r'''$.idr''',
      );
}

class GetpayCall {
  static Future<ApiCallResponse> call({
    String? codeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getpay',
      apiUrl: 'https://api.dapp.mx/v2/dapp-codes/${codeId}/payment',
      callType: ApiCallType.GET,
      headers: {
        'User-Agent': 'MiIntegracion1.0',
        'Authorization':
            'Basic OmVhMzMyN2ZlLWZiYzctNDMwYy1iNDY5LWJjZGZlYzYyNjJmYg==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.msg''',
      );
  static dynamic rfs(dynamic response) => getJsonField(
        response,
        r'''$.data.reference_num''',
      );
  static dynamic paygo(dynamic response) => getJsonField(
        response,
        r'''$.data.payments[:].currency''',
      );
}

class IncorreoCall {
  static Future<ApiCallResponse> call({
    String? a = '',
    String? b = '',
    String? c = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'incorreo',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 50,
        'd': "correo",
        'a': a,
        'b': b,
        'c': c,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VmcCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'vmc',
      apiUrl: 'http://127.0.0.1:5400/api/v1/drive_selection/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RuletaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ruleta',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 3,
        'a': "ruleta",
        'b': "1",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic vd(dynamic response) => getJsonField(
        response,
        r'''$.vdrl''',
      );
  static dynamic txr(dynamic response) => getJsonField(
        response,
        r'''$.txr''',
      );
  static dynamic lot(dynamic response) => getJsonField(
        response,
        r'''$.lot''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$.slot''',
      );
  static dynamic txtslot(dynamic response) => getJsonField(
        response,
        r'''$.txtslot''',
      );
  static dynamic idp(dynamic response) => getJsonField(
        response,
        r'''$.idp''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic idm(dynamic response) => getJsonField(
        response,
        r'''$.idm''',
      );
}

class RuletanewCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ruletanew',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': 3,
        'a': "ruleta-new",
        'b': "1",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic vd(dynamic response) => getJsonField(
        response,
        r'''$.vdrl''',
      );
  static dynamic txr(dynamic response) => getJsonField(
        response,
        r'''$.txr''',
      );
  static dynamic lot(dynamic response) => getJsonField(
        response,
        r'''$.lot''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$.slot''',
      );
  static dynamic txtslot(dynamic response) => getJsonField(
        response,
        r'''$.txtslot''',
      );
}

class MoneydevpdCall {
  static Future<ApiCallResponse> call({
    String? slot = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'moneydevpd',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/current_coin?number=${slot}&model=03',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CancelSelectionCall {
  static Future<ApiCallResponse> call({
    String? slot = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CancelSelection',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/current_coin?number=${slot}&model=05',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SetpriceCall {
  static Future<ApiCallResponse> call({
    String? slot = '',
    String? price = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'setprice',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/current_coin?number=${slot}&payload=${price}&model=12',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReleasemoneyCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'releasemoney',
      apiUrl: 'http://127.0.0.1:5400/api/v1/current_coin?model=25',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendwhpCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? message = '',
  }) {
    final body = '''
{
  "phone": "+521${phone}",
  "message": "${message}",
  "enqueue": "never"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendwhp',
      apiUrl: 'https://api.menbiz-latam.online/v1/messages',
      callType: ApiCallType.POST,
      headers: {
        'Token':
            'ae2bd72ff96678f8886055d688c3695c9c853942e9b2b309e2f6478cb93c75a769550f6ab64c4341',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PutvalorvmcCall {
  static Future<ApiCallResponse> call({
    String? valor = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'putvalorvmc',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/current_coin?model=27&payload=${valor}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SetinventoryCall {
  static Future<ApiCallResponse> call({
    String? slot = '',
    String? inv = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'setinventory',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/set_inventary?number=${slot}&inventory=${inv}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaldoCall {
  static Future<ApiCallResponse> call({
    String? slot = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'saldo',
      apiUrl: 'http://127.0.0.1:5400/api/v1/saldo',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TokenfinsusCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'tokenfinsus',
      apiUrl:
          'https://www.dimmerapp.com/VendingMachineToken/core/Service/GetToken',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idMachine': "VMFINSUSAAA001",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.details.token''',
      );
  static dynamic msn(dynamic response) => getJsonField(
        response,
        r'''$.messageCode''',
      );
}

class PhoneuserfinsusCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'phoneuserfinsus',
      apiUrl: 'https://www.dimmerapp.com/VendingMachine/usuario/${phone}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.details.nameComplete''',
      );
  static dynamic msn(dynamic response) => getJsonField(
        response,
        r'''$.messageCode''',
      );
}

class PhoneuservmcCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'phoneuservmc',
      apiUrl: 'http://127.0.0.1:5400/api/v1/client?phone=${phone}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.details.nameComplete''',
      );
  static dynamic msn(dynamic response) => getJsonField(
        response,
        r'''$.messageCode''',
      );
}

class RecargafinsusCall {
  static Future<ApiCallResponse> call({
    String? ph = '',
    String? vmc = '',
    String? monto = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'recargafinsus',
      apiUrl:
          'http://127.0.0.1:5400/api/v1/recharge?phone=${ph}&idMachine=${vmc}&amount=${monto}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendsalesCall {
  static Future<ApiCallResponse> call({
    String? a = '',
    String? b = '',
    String? c = 'VMFINSUSAAA001',
    int? e,
    String? f = '',
    String? g = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendsales',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': "50",
        'd': "send-sales",
        'a': a,
        'b': b,
        'e': e,
        'f': f,
        'c': c,
        'g': g,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendsalesrechargeCall {
  static Future<ApiCallResponse> call({
    String? a = '',
    String? b = '',
    String? c = 'VMFINSUSAAA001',
    int? e,
    String? f = '',
    String? h = '',
    String? i = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendsalesrecharge',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': "50",
        'd': "send-sales-recharge",
        'a': a,
        'b': b,
        'e': e,
        'f': f,
        'c': c,
        'h': h,
        'i': i,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LicenciaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'licencia',
      apiUrl: 'http://127.0.0.1:5400/api/v1/licencia',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic licencia(dynamic response) => getJsonField(
        response,
        r'''$..id''',
      );
}

class SendwhpTwilioCall {
  static Future<ApiCallResponse> call({
    String? ph = '',
    String? price = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendwhpTwilio',
      apiUrl: 'https://appvmc.com/vmc/bcpower/phx/whp.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ph': ph,
        'price': price,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateinvCall {
  static Future<ApiCallResponse> call({
    String? b = '',
    String? c = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'updateinv',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': "6",
        'a': "update-inv",
        'b': b,
        'c': c,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PremioCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'premio',
      apiUrl: 'https://scapp.info/vmc/bcpower/phx/fx.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'v': "3",
        'a': "premio",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cvn(dynamic response) => getJsonField(
        response,
        r'''$.cvn''',
      );
  static dynamic sc(dynamic response) => getJsonField(
        response,
        r'''$.sc''',
      );
  static dynamic lot(dynamic response) => getJsonField(
        response,
        r'''$.lot''',
      );
  static dynamic slot(dynamic response) => getJsonField(
        response,
        r'''$.slot''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
