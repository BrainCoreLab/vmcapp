// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

class NumericKeyboardWidget extends StatefulWidget {
  const NumericKeyboardWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NumericKeyboardWidgetState createState() => _NumericKeyboardWidgetState();
}

class _NumericKeyboardWidgetState extends State<NumericKeyboardWidget> {
  String enteredData = '';

  void _addToEnteredData(String value) {
    setState(() {
      enteredData += value;
    });
    print('Entered data: $enteredData');
    FFAppState().phoneaout = enteredData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: TextEditingController(text: enteredData),
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Número Telefonico',
              hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: Color(0x721E2429),
                    fontSize: 20,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodySmallFamily),
                  ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              filled: true,
              fillColor: Color(0x4095A1AC),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('1'),
              _buildNumberButton('2'),
              _buildNumberButton('3'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('4'),
              _buildNumberButton('5'),
              _buildNumberButton('6'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('7'),
              _buildNumberButton('8'),
              _buildNumberButton('9'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('0'),
              _buildClearButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return GestureDetector(
      onTap: () {
        _addToEnteredData(number);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClearButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          enteredData = '';
        });
        print('Entered data cleared.');
        FFAppState().phoneaout = enteredData;
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            Icons.clear,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
