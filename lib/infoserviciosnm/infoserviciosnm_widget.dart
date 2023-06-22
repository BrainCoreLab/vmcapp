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
import 'infoserviciosnm_model.dart';
export 'infoserviciosnm_model.dart';

class InfoserviciosnmWidget extends StatefulWidget {
  const InfoserviciosnmWidget({
    Key? key,
    this.slot,
    this.nmfinsus,
    this.vmcprice,
    this.ph,
    this.pricex,
  }) : super(key: key);

  final int? slot;
  final String? nmfinsus;
  final int? vmcprice;
  final String? ph;
  final String? pricex;

  @override
  _InfoserviciosnmWidgetState createState() => _InfoserviciosnmWidgetState();
}

class _InfoserviciosnmWidgetState extends State<InfoserviciosnmWidget> {
  late InfoserviciosnmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoserviciosnmModel());

    _model.telefonoController1 ??= TextEditingController(text: widget.ph);
    _model.telefonoController2 ??= TextEditingController(text: widget.nmfinsus);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF07558C),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(
                  color: Color(0xFF07558C),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/Fodo_FINSUS_app.jpg',
                    ).image,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 640.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FlutterFlowVideoPlayer(
                                    path:
                                        'http://localhost:45789/videos/video.mp4',
                                    videoType: VideoType.network,
                                    autoPlay: true,
                                    looping: true,
                                    showControls: false,
                                    allowFullScreen: true,
                                    allowPlaybackSpeedMenu: false,
                                    lazyLoad: false,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 850.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 750.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        25.0,
                                                                        5.0,
                                                                        20.0),
                                                                child: Text(
                                                                  'CONFIRMAR DATOS',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFF1E6BB4),
                                                                        fontSize:
                                                                            30.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons.warning,
                                                                  color: Color(
                                                                      0xFFFF8477),
                                                                  size: 50.0,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          30.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Importante: Deposite el monto exacto, la maquina no regresa cambio , \nni dinero una vez hecho el deposito',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xFFFF8477),
                                                                          fontSize:
                                                                              23.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              10.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'MONTO A EXACTO A DEPOSITAR: \$',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Color(0xFF1E6BB4),
                                                                                  fontSize: 35.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            widget.pricex!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Color(0xFF1E6BB4),
                                                                                  fontSize: 40.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'MONTO INGRESADO: \$',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Color(0xFF202124),
                                                                                  fontSize: 35.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                80.0,
                                                                            child:
                                                                                custom_widgets.Totalmoney(
                                                                              width: 100.0,
                                                                              height: 80.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                200.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                    child: Text(
                                                                                      'CUENTA',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Color(0xFF1E6BB4),
                                                                                            fontSize: 23.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
                                                                                              child: Container(
                                                                                                width: 550.0,
                                                                                                decoration: BoxDecoration(),
                                                                                                child: TextFormField(
                                                                                                  controller: _model.telefonoController1,
                                                                                                  autofocus: true,
                                                                                                  readOnly: true,
                                                                                                  obscureText: false,
                                                                                                  decoration: InputDecoration(
                                                                                                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                          color: Color(0x2FFFFFFF),
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                        ),
                                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    errorBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    filled: true,
                                                                                                    fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: Color(0xFF1E6BB4),
                                                                                                        fontSize: 30.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                  validator: _model.telefonoController1Validator.asValidator(context),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                    child: Text(
                                                                                      'TITULAR',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Color(0xFF1E6BB4),
                                                                                            fontSize: 23.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                              child: Container(
                                                                                                width: 550.0,
                                                                                                decoration: BoxDecoration(),
                                                                                                child: TextFormField(
                                                                                                  controller: _model.telefonoController2,
                                                                                                  autofocus: true,
                                                                                                  readOnly: true,
                                                                                                  obscureText: false,
                                                                                                  decoration: InputDecoration(
                                                                                                    hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                          color: Color(0x2FFFFFFF),
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                        ),
                                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    errorBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Color(0x00000000),
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                        topRight: Radius.circular(4.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    filled: true,
                                                                                                    fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: Color(0xFF1E6BB4),
                                                                                                        fontSize: 30.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                  textAlign: TextAlign.center,
                                                                                                  validator: _model.telefonoController2Validator.asValidator(context),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        35.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            40.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            var _shouldSetState =
                                                                                false;
                                                                            _model.sc =
                                                                                await actions.botonverificar(
                                                                              FFAppState().montovmc,
                                                                              widget.vmcprice!,
                                                                            );
                                                                            _shouldSetState =
                                                                                true;
                                                                            if (_model.sc!) {
                                                                              context.pushNamed(
                                                                                'Infoserviciosconf',
                                                                                queryParameters: {
                                                                                  'slot': serializeParam(
                                                                                    widget.slot,
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'nmfinsus': serializeParam(
                                                                                    _model.telefonoController2.text,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'mingresado': serializeParam(
                                                                                    '',
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'ph': serializeParam(
                                                                                    widget.ph,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'pricex': serializeParam(
                                                                                    widget.pricex,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'vmcprice': serializeParam(
                                                                                    widget.vmcprice,
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'mdep': serializeParam(
                                                                                    FFAppState().montorc,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );

                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            } else {
                                                                              context.pushNamed(
                                                                                'Infoserviciosfail',
                                                                                queryParameters: {
                                                                                  'slot': serializeParam(
                                                                                    widget.slot,
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'nmfinsus': serializeParam(
                                                                                    widget.nmfinsus,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'vmcprice': serializeParam(
                                                                                    widget.vmcprice,
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'ph': serializeParam(
                                                                                    widget.ph,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'pricex': serializeParam(
                                                                                    widget.pricex,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );

                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            }

                                                                            if (_shouldSetState)
                                                                              setState(() {});
                                                                          },
                                                                          text:
                                                                              'Confirmar Datos para Deposito',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                350.0,
                                                                            height:
                                                                                60.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  fontSize: 20.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                2.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 50.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Infofinanciero');
                              },
                              text: 'Otras opciones de Recarga',
                              icon: Icon(
                                Icons.attach_money,
                                size: 30.0,
                              ),
                              options: FFButtonOptions(
                                width: 400.0,
                                height: 60.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF002C83),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultyep =
                                    await SetinventoryCall.call(
                                  slot: '60',
                                );
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                _model.saldoout = await SaldoCall.call();
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                _model.apiResult44u = await SetpriceCall.call(
                                  slot: '60',
                                  price: getJsonField(
                                    (_model.saldoout?.jsonBody ?? ''),
                                    r'''$..payload''',
                                  ).toString(),
                                );
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                _model.apiResultjnr = await MoneydevpdCall.call(
                                  slot: '60',
                                );
                                await Future.delayed(
                                    const Duration(milliseconds: 3000));

                                context.pushNamed('Home_Page_B');

                                setState(() {});
                              },
                              text: 'Salir de Recarga',
                              icon: FaIcon(
                                FontAwesomeIcons.angleDoubleLeft,
                                size: 16.0,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 60.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF002C83),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
