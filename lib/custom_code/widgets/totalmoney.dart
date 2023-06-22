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
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Totalmoney extends StatefulWidget {
  const Totalmoney({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _TotalmoneyState createState() => _TotalmoneyState();
}

class _TotalmoneyState extends State<Totalmoney> {
  String dataFromFile = '0.00';
  int pay = 0;

  Future<void> readText() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:5400/api/v1/saldo'),
    );

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      setState(() {
        dataFromFile = jsonResponse['data']['monto'];
        pay = jsonResponse['data']['payload'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //  Timer.periodic(const Duration(seconds: 3), (Timer timer) { });

    readText();
    print('DT:$dataFromFile');
    FFAppState().montorc = dataFromFile;
    FFAppState().montovmc = pay;

    return AutoSizeText(
      dataFromFile,
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
            fontSize: 60,
            color: Colors.black,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
          ),
    );
  }
}
