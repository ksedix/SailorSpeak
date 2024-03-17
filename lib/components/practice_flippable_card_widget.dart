import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'practice_flippable_card_model.dart';
export 'practice_flippable_card_model.dart';

class PracticeFlippableCardWidget extends StatefulWidget {
  const PracticeFlippableCardWidget({
    super.key,
    this.name,
    this.audioPath,
    required this.pronunciation,
  });

  final String? name;
  final String? audioPath;
  final String? pronunciation;

  @override
  State<PracticeFlippableCardWidget> createState() =>
      _PracticeFlippableCardWidgetState();
}

class _PracticeFlippableCardWidgetState
    extends State<PracticeFlippableCardWidget> {
  late PracticeFlippableCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PracticeFlippableCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // The reason we surround the flippable card in a container is to limit its width. If not surrounded by a container, the flippable card will take up all available horizontal space.
        Container(
      width: 400.0,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
        child: FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          speed: 400,
          front: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 350.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).flutterBlue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.name!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 24.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.play_circle_fill,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            _model.soundPlayer ??= AudioPlayer();
                            if (_model.soundPlayer!.playing) {
                              await _model.soundPlayer!.stop();
                            }
                            _model.soundPlayer!.setVolume(1.0);
                            _model.soundPlayer!
                                .setUrl('assets/audios/${widget.audioPath}')
                                .then((_) => _model.soundPlayer!.play());
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.mic,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.volume_up,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 30.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          back: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 350.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).flutterBlue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widget.pronunciation!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
