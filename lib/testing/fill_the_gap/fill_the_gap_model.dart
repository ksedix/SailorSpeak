import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/testing/missing_word/missing_word_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'fill_the_gap_widget.dart' show FillTheGapWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FillTheGapModel extends FlutterFlowModel<FillTheGapWidget> {
  ///  Local state fields for this page.

  int? nCorrect = 0;

  bool? checked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for missingWord component.
  late MissingWordModel missingWordModel1;
  // Model for missingWord component.
  late MissingWordModel missingWordModel2;
  // Model for missingWord component.
  late MissingWordModel missingWordModel3;
  // Model for missingWord component.
  late MissingWordModel missingWordModel4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    missingWordModel1 = createModel(context, () => MissingWordModel());
    missingWordModel2 = createModel(context, () => MissingWordModel());
    missingWordModel3 = createModel(context, () => MissingWordModel());
    missingWordModel4 = createModel(context, () => MissingWordModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    missingWordModel1.dispose();
    missingWordModel2.dispose();
    missingWordModel3.dispose();
    missingWordModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
