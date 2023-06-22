import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.sn,
  }) : super(key: key);

  final String? sn;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultgl4 = await CancelSelectionCall.call(
        slot: FFAppState().slotid,
      );
      _model.apiResultuy6 = await ReleasemoneyCall.call();
    });

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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
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
                                  ),
                                ),
                              ),
                              FlutterFlowVideoPlayer(
                                path: 'http://localhost:45789/videos/video.mp4',
                                videoType: VideoType.network,
                                autoPlay: true,
                                looping: true,
                                showControls: false,
                                allowFullScreen: true,
                                allowPlaybackSpeedMenu: false,
                                lazyLoad: false,
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
                                          height: 950.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 10.0, 20.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 500.0,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  50.0),
                                                      child: PageView(
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 900.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            child: Row(
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleLeft,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.animateToPage(
                                                                          3,
                                                                          duration:
                                                                              Duration(milliseconds: 500),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 1,
                                                                              c: 5,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot15ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot15ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxWidth: double.infinity,
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 6,
                                                                              c: 10,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot610ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot610ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(6).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 11,
                                                                              c: 15,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot1115ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot1115ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleRight,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 900.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            child: Row(
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleLeft,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 16,
                                                                              c: 20,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot1620ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot1620ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 21,
                                                                              c: 25,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot2125ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot2125ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(6).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 26,
                                                                              c: 30,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot2630ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot2630ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleRight,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 900.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            child: Row(
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleLeft,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 31,
                                                                              c: 35,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot3135ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot3135ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 36,
                                                                              c: 40,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot3640ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot3640ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleRight,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 900.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            child: Row(
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleLeft,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 41,
                                                                              c: 45,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot4145ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot4145ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(5).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                          FutureBuilder<
                                                                              ApiCallResponse>(
                                                                            future:
                                                                                ProductosCall.call(
                                                                              b: 46,
                                                                              c: 51,
                                                                              d: FFAppState().licencia,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              final slot4650ProductosResponse = snapshot.data!;
                                                                              return Builder(
                                                                                builder: (context) {
                                                                                  final productos = getJsonField(
                                                                                    slot4650ProductosResponse.jsonBody,
                                                                                    r'''$[*]''',
                                                                                  ).toList().take(6).toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: List.generate(productos.length, (productosIndex) {
                                                                                      final productosItem = productos[productosIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 100.0,
                                                                                                  height: 30.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..slotx''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 20.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                if (getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..ivst''',
                                                                                                )) {
                                                                                                  context.pushNamed(
                                                                                                    'InfoproductoQR',
                                                                                                    queryParameters: {
                                                                                                      'producto': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..nprod''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'precio': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..pricex''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                      'id': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..id''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'sn': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..sn''',
                                                                                                        ),
                                                                                                        ParamType.int,
                                                                                                      ),
                                                                                                      'vmcprice': serializeParam(
                                                                                                        getJsonField(
                                                                                                          productosItem,
                                                                                                          r'''$..vmcprice''',
                                                                                                        ).toString(),
                                                                                                        ParamType.String,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  return;
                                                                                                } else {
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Image.network(
                                                                                                getJsonField(
                                                                                                  productosItem,
                                                                                                  r'''$..path''',
                                                                                                ),
                                                                                                width: 150.0,
                                                                                                height: 150.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                constraints: BoxConstraints(
                                                                                                  maxHeight: 50.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productosItem,
                                                                                                      r'''$..price''',
                                                                                                    ).toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: Color(0xFF3359A5),
                                                                                                          fontSize: 23.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          100.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .chevronCircleRight,
                                                                        color: Color(
                                                                            0xFF3359A5),
                                                                        size:
                                                                            70.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await _model
                                                                            .pageViewController
                                                                            ?.animateToPage(
                                                                          0,
                                                                          duration:
                                                                              Duration(milliseconds: 500),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF032A46),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context
                                                      .pushNamed('Home_Page_B');
                                                },
                                                child: Image.asset(
                                                  'assets/images/botoncomprah2.png',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  height: 150.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/depositarhome2.png',
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1.0,
                                                height: 150.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                'assets/images/ruletahome2.png',
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1.0,
                                                height: 250.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
                              child: Container(
                                width: 100.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/gcard.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Gift Card',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF032A46),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/payservicio.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Pagos de Servicios',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF032A46),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/recargas.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Otras Recargas',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF032A46),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/whpicon.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Asistencia ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF032A46),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
