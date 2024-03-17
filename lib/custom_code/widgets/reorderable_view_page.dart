// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ReorderableViewPage extends StatefulWidget {
  const ReorderableViewPage({
    Key? key,
    this.width,
    this.height,
    this.checked,
    this.allCorrect,
  }) : super(key: key);

  final double? width;
  final double? height;
  final bool? checked;
  final Future<dynamic> Function()? allCorrect;

  @override
  _ReorderableViewPageState createState() => _ReorderableViewPageState();
}

class _ReorderableViewPageState extends State<ReorderableViewPage> {
  final shipParts = shuffleOptions(FFAppState().shipParts.toList());

  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final shipPart = shipParts.removeAt(oldindex);
      shipParts.insert(newindex, shipPart);
    });
  }

  @override
  Widget build(BuildContext context) {
    int nCorrect = 0;
    for (int i = 0; i < shipParts.length; i++) {
      if (shipParts[i] == FFAppState().shipParts.toList()[i]) {
        nCorrect++;
      }
    }
    if (nCorrect == 9) {
      widget.allCorrect!();
    }

    return ReorderableListView(
      primary: false,
      children: <Widget>[
        for (int i = 0; i < shipParts.length; i++)
          Container(
              key: ValueKey(shipParts[i]),
              color: widget.checked ?? false
                  ? ((shipParts[i] == FFAppState().shipParts.toList()[i])
                      ? FlutterFlowTheme.of(context).success
                      : FlutterFlowTheme.of(context).error)
                  : Colors.transparent,
              child: Text(shipParts[i],
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                      ))),
      ],
      onReorder: reorderData,
      buildDefaultDragHandles: widget.checked ?? false ? false : true,
    );
  }
}
