import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoproductoQRModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (releasemoney)] action in InfoproductoQR widget.
  ApiCallResponse? apiResulty5g;
  // Stores action output result for [Backend Call - API (infoproducto)] action in InfoproductoQR widget.
  ApiCallResponse? pd;
  // Stores action output result for [Backend Call - API (setinventory)] action in InfoproductoQR widget.
  ApiCallResponse? apiResultwzp;
  // Stores action output result for [Backend Call - API (CancelSelection)] action in Button widget.
  ApiCallResponse? apiResultn9j;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
