// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:io';
import 'package:flutter/scheduler.dart';
import 'package:url_launcher/url_launcher.dart';

class MoneysocketRG extends StatefulWidget {
  const MoneysocketRG({
    Key? key,
    this.width,
    this.height,
    this.ph,
    this.nmfinsus,
    this.mingresado,
    this.slot,
    this.timer,
    this.pricex,
    this.vmcprice,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? ph;
  final String? slot;
  final String? mingresado;
  final String? nmfinsus;
  final String? pricex;
  final String? vmcprice;
  final Timer? timer;

  @override
  _MoneysocketState createState() => _MoneysocketState();
}

class _MoneysocketState extends State<MoneysocketRG> {
  bool _isRunning = true;
  bool _isxd = true;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void initState() {
    Timer.periodic(const Duration(seconds: 10), (Timer timer) {
      if (_isRunning == false) {
        timer.cancel();
        print('Tiempo Cancelado Efectivo');
      }
      dappin(widget.ph, widget.mingresado, _isxd, widget.slot, widget.nmfinsus,
          widget.pricex, widget.vmcprice);
    });
    super.initState();
  }

  void dappin(String? ph, String? mingresado, bool? xd, String? slot,
      String? nmfinsus, String? pricex, String? vmcprice) async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:5400/api/v1/saldo'),
      //'https://api.dapp.mx/v2/dapp-codes/qGqHTYMS/payment'),
      // Send authorization headers to the backend.
    );

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      if (xd == true) {
        //var nr=jsonResponse['data']['reference_num'];
        var nr = jsonResponse['data']['monto'];
        var pay = jsonResponse['data']['payload'];
        print('Monto :$pay de $pricex');

        if (pay >= vmcprice) {
          print('Monto Mayor :$pay de $vmcprice');

          if (_isRunning == true) {
            final Uri launchUri = Uri.parse(
                '/infoserviciosconfirma?nmfinsus=$nmfinsus&mingresado=$mingresado&slot=$slot&ph=$ph&pricex=$pricex&vmcprice=$vmcprice&mdep=$nr');
            await launchUrl(
              launchUri,
              webOnlyWindowName: '_self',
            );
          }
          _isxd = false;
          _isRunning = false;
        }
      }
    } else {
      print('Sin conexion');
    }
  }
}
