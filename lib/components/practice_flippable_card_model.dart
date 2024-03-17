import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'practice_flippable_card_widget.dart' show PracticeFlippableCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class PracticeFlippableCardModel
    extends FlutterFlowModel<PracticeFlippableCardWidget> {
  ///  Local state fields for this component.

  String? recordingPath;

  bool hasRecorded = false;

  ///  State fields for stateful widgets in this component.

  AudioPlayer? soundPlayer;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
