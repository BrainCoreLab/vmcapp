import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoserviciosnmModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for telefono widget.
  TextEditingController? telefonoController1;
  String? Function(BuildContext, String?)? telefonoController1Validator;
  // State field(s) for telefono widget.
  TextEditingController? telefonoController2;
  String? Function(BuildContext, String?)? telefonoController2Validator;
  // Stores action output result for [Custom Action - botonverificar] action in Button widget.
  bool? sc;
  // Stores action output result for [Backend Call - API (setinventory)] action in Button widget.
  ApiCallResponse? apiResultyep;
  // Stores action output result for [Backend Call - API (saldo)] action in Button widget.
  ApiCallResponse? saldoout;
  // Stores action output result for [Backend Call - API (setprice)] action in Button widget.
  ApiCallResponse? apiResult44u;
  // Stores action output result for [Backend Call - API (moneydevpd)] action in Button widget.
  ApiCallResponse? apiResultjnr;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    telefonoController1?.dispose();
    telefonoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
