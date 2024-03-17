// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:record/record.dart';

/**
 * Class for starting and stopping a recording
 */
class RecordingService {
  final record = Record();
  /**
 →
 * Starts the recording. On Iphone/Android, also checks that the
 app has permission to record the users voice.
 */
  Future<void> startRecording() async {
    // Check recording permission
    if (await record.hasPermission()) {
      try {
        //start recording
        await record.start();
      } catch (e) {
        print('Error starting recording: $e');
      }
    } else {
      print('No permission to record audio.');
    }
  }

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

  Future<String> stopRecording() async {
    return await record.stop() ?? ""; // Stop recording and return the path
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
