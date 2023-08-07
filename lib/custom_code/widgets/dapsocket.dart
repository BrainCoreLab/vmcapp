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

class Dapsocket extends StatefulWidget {
  const Dapsocket({
    Key? key,
    this.width,
    this.height,
    this.idcode,
    this.idp,
    this.slot,
    this.vmcprice,
    this.timerqr,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? idcode;
  final String? idp;
  final String? slot;
  final String? vmcprice;
  final Timer? timerqr;

  @override
  _DapsocketState createState() => _DapsocketState();
}

class _DapsocketState extends State<Dapsocket> {
  bool _isRunning = true;
  bool _isxd = true;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void initState() {
    Timer.periodic(const Duration(seconds: 5), (Timer timerqr) {
      if (!_isRunning) {
        timerqr.cancel();
        print('Tiempo Cancelado QR');
      }
      dappin(widget.idcode, widget.idp, _isxd, widget.slot, widget.vmcprice);
    });
    super.initState();
  }

  void dappin(String? idc, String? idp, bool? xd, String? slot,
      String? vmcprice) async {
    final response = await http.get(
      Uri.parse('https://api.dapp.mx/v2/dapp-codes/$idc/payment'),
      //'https://api.dapp.mx/v2/dapp-codes/qGqHTYMS/payment'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic OmVhMzMyN2ZlLWZiYzctNDMwYy1iNDY5LWJjZGZlYzYyNjJmYg=='
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      if (jsonResponse['data']['code'] == null) {
        print('No ha pagado QR');
      } else {
        if (xd == true) {
          _isxd = false;
          var nr = jsonResponse['data']['reference_num'];
          _isRunning = false;
          print('VR:$_isRunning');
          final Uri launchUri = Uri.parse(
              '/factura?dappref=$nr&idp=$idp&sn=$slot&vmcprice=$vmcprice');
          await launchUrl(
            launchUri,
            webOnlyWindowName: '_self',
          );
        }

        print('Ya Pago QR');
      }
    } else {
      print('Sin conexion');
    }
  }
}

//https://sandbox.dapp.mx/v2/dapp-codes/[code_id]/payment
//OjNmMmNkMDBhLTE4Y2UtNDYyNy05MDJiLTg5ZWRlODYxN2RlZg==
//https://api.dapp.mx/
// OmVhMzMyN2ZlLWZiYzctNDMwYy1iNDY5LWJjZGZlYzYyNjJmYg==
