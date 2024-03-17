import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'quiz_widget.dart' show QuizWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class QuizModel extends FlutterFlowModel<QuizWidget> {
  ///  Local state fields for this page.

  bool? optionSelected = false;

  bool? correctOptionSelected = false;

  String? optionName;

  List<String> question1Options = [];
  void addToQuestion1Options(String item) => question1Options.add(item);
  void removeFromQuestion1Options(String item) => question1Options.remove(item);
  void removeAtIndexFromQuestion1Options(int index) =>
      question1Options.removeAt(index);
  void insertAtIndexInQuestion1Options(int index, String item) =>
      question1Options.insert(index, item);
  void updateQuestion1OptionsAtIndex(int index, Function(String) updateFn) =>
      question1Options[index] = updateFn(question1Options[index]);

  List<String> question2Options = [];
  void addToQuestion2Options(String item) => question2Options.add(item);
  void removeFromQuestion2Options(String item) => question2Options.remove(item);
  void removeAtIndexFromQuestion2Options(int index) =>
      question2Options.removeAt(index);
  void insertAtIndexInQuestion2Options(int index, String item) =>
      question2Options.insert(index, item);
  void updateQuestion2OptionsAtIndex(int index, Function(String) updateFn) =>
      question2Options[index] = updateFn(question2Options[index]);

  List<String> question3Options = [];
  void addToQuestion3Options(String item) => question3Options.add(item);
  void removeFromQuestion3Options(String item) => question3Options.remove(item);
  void removeAtIndexFromQuestion3Options(int index) =>
      question3Options.removeAt(index);
  void insertAtIndexInQuestion3Options(int index, String item) =>
      question3Options.insert(index, item);
  void updateQuestion3OptionsAtIndex(int index, Function(String) updateFn) =>
      question3Options[index] = updateFn(question3Options[index]);

  List<String> question4Options = [];
  void addToQuestion4Options(String item) => question4Options.add(item);
  void removeFromQuestion4Options(String item) => question4Options.remove(item);
  void removeAtIndexFromQuestion4Options(int index) =>
      question4Options.removeAt(index);
  void insertAtIndexInQuestion4Options(int index, String item) =>
      question4Options.insert(index, item);
  void updateQuestion4OptionsAtIndex(int index, Function(String) updateFn) =>
      question4Options[index] = updateFn(question4Options[index]);

  int? nCorrect = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
