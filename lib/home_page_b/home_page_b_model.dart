import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageBModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (licencia)] action in Home_Page_B widget.
  ApiCallResponse? licencia;
  // Stores action output result for [Backend Call - API (CancelSelection)] action in Home_Page_B widget.
  ApiCallResponse? apiResultk4x;
  // Stores action output result for [Backend Call - API (releasemoney)] action in Home_Page_B widget.
  ApiCallResponse? apiResultnkd;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
