import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _referencia = prefs.getString('ff_referencia') ?? _referencia;
    });
    _safeInit(() {
      _appid = prefs.getString('ff_appid') ?? _appid;
    });
    _safeInit(() {
      _vmcprice = prefs.getString('ff_vmcprice') ?? _vmcprice;
    });
    _safeInit(() {
      _slotid = prefs.getString('ff_slotid') ?? _slotid;
    });
    _safeInit(() {
      _nmfinsus = prefs.getString('ff_nmfinsus') ?? _nmfinsus;
    });
    _safeInit(() {
      _licencia = prefs.getString('ff_licencia') ?? _licencia;
    });
    _safeInit(() {
      _phoneaout = prefs.getString('ff_phoneaout') ?? _phoneaout;
    });
    _safeInit(() {
      _montorc = prefs.getString('ff_montorc') ?? _montorc;
    });
    _safeInit(() {
      _montovmc = prefs.getInt('ff_montovmc') ?? _montovmc;
    });
    _safeInit(() {
      _niv = prefs.getString('ff_niv') ?? _niv;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _referencia = '';
  String get referencia => _referencia;
  set referencia(String _value) {
    _referencia = _value;
    prefs.setString('ff_referencia', _value);
  }

  String _appid = '';
  String get appid => _appid;
  set appid(String _value) {
    _appid = _value;
    prefs.setString('ff_appid', _value);
  }

  String _vmcprice = '';
  String get vmcprice => _vmcprice;
  set vmcprice(String _value) {
    _vmcprice = _value;
    prefs.setString('ff_vmcprice', _value);
  }

  String _slotid = '';
  String get slotid => _slotid;
  set slotid(String _value) {
    _slotid = _value;
    prefs.setString('ff_slotid', _value);
  }

  String _nmfinsus = '';
  String get nmfinsus => _nmfinsus;
  set nmfinsus(String _value) {
    _nmfinsus = _value;
    prefs.setString('ff_nmfinsus', _value);
  }

  String _licencia = '';
  String get licencia => _licencia;
  set licencia(String _value) {
    _licencia = _value;
    prefs.setString('ff_licencia', _value);
  }

  String _phoneaout = '';
  String get phoneaout => _phoneaout;
  set phoneaout(String _value) {
    _phoneaout = _value;
    prefs.setString('ff_phoneaout', _value);
  }

  String _montorc = '';
  String get montorc => _montorc;
  set montorc(String _value) {
    _montorc = _value;
    prefs.setString('ff_montorc', _value);
  }

  int _montovmc = 0;
  int get montovmc => _montovmc;
  set montovmc(int _value) {
    _montovmc = _value;
    prefs.setInt('ff_montovmc', _value);
  }

  String _niv = '';
  String get niv => _niv;
  set niv(String _value) {
    _niv = _value;
    prefs.setString('ff_niv', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
