import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/testing/missing_word/missing_word_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fill_the_gap_model.dart';
export 'fill_the_gap_model.dart';

class FillTheGapWidget extends StatefulWidget {
  const FillTheGapWidget({super.key});

  @override
  State<FillTheGapWidget> createState() => _FillTheGapWidgetState();
}

class _FillTheGapWidgetState extends State<FillTheGapWidget> {
  late FillTheGapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FillTheGapModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0x004B39EF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).flutterBlue,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Fill the gap',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).flutterBlue,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.missingWordModel1,
                  updateCallback: () => setState(() {}),
                  child: MissingWordWidget(
                    answer: 'test1',
                    width: 100,
                    checked: _model.checked,
                  ),
                ),
                wrapWithModel(
                  model: _model.missingWordModel2,
                  updateCallback: () => setState(() {}),
                  child: MissingWordWidget(
                    answer: 'test2',
                    width: 100,
                    checked: _model.checked,
                  ),
                ),
                wrapWithModel(
                  model: _model.missingWordModel3,
                  updateCallback: () => setState(() {}),
                  child: MissingWordWidget(
                    answer: 'test3',
                    width: 100,
                    checked: _model.checked,
                  ),
                ),
                wrapWithModel(
                  model: _model.missingWordModel4,
                  updateCallback: () => setState(() {}),
                  child: MissingWordWidget(
                    answer: 'test4',
                    width: 100,
                    checked: _model.checked,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        _model.checked = true;
                      });
                    },
                    text: 'Check',
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 65.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).success,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: valueOrDefault<String>(
                          _model.nCorrect?.toString(),
                          '0',
                        ),
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: ' out of 8 correct',
                        style: TextStyle(),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: custom_widgets.SoundRecordAndPlay(
                    width: 100.0,
                    height: 100.0,
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
