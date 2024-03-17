// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../widgets/recording_microphone.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';

/**
 →
 * This class creates a microphone button that uses the Recording
 Service to record a user voice.
 →
 * The microphone button turns red when pressed down, indicating
 that it has started recording.
 →
 * The microphone button stops recording when released and updates
 the recording path using the setRecordingPath function.
 */
class RecordingMicrophone extends StatefulWidget {
  const RecordingMicrophone({
    Key? key,
    required this.setRecordingPath,
  }) : super(key: key);
  /**
 →
 →
 * Updates the recording path when the microphone button is
 released. This path will then be used by the app to access the
 recording for playback purposes.
 */
  final Function(String) setRecordingPath;
  @override
  _RecordingMicrophoneState createState() => _RecordingMicrophoneState();
}

class _RecordingMicrophoneState extends State<RecordingMicrophone> {
  late String path;
  bool _isRecording = false;
  final RecordingService recordingService = RecordingService();
  @override
  Widget build(BuildContext context) {
    //Wrapping the FlutterFlowIconButton in a gesture detector is
    //necessary because the gesture detector can detect whether
    //the button is being pressed down/released.
    return GestureDetector(
      //called when the button is pressed down
      onTapDown: (details) async {
        setState(() {
          _isRecording = true;
        });
        recordingService.startRecording();
      },
      //called when the button is released
      onTapCancel: () async {
        setState(() {
          _isRecording = false;
        });
        path = await recordingService.stopRecording();
        widget.setRecordingPath(path);
      },
      onTapUp: (details) async {
        setState(() {
          _isRecording = false;
        });
        path = await recordingService.stopRecording();
        widget.setRecordingPath(path);
      },
      child: FlutterFlowIconButton(
        borderRadius: 30.0,
        borderWidth: 1.0,
        buttonSize: 60.0,
        onPressed: () {},
        icon: Icon(
          Icons.mic,
          size: 30,
          color: _isRecording
              ? Colors.red
              : FlutterFlowTheme.of(context).primaryBtnText,
        ),
      ),
    );
  }
}
