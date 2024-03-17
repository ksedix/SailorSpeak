import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'missing_word_model.dart';
export 'missing_word_model.dart';

class MissingWordWidget extends StatefulWidget {
  const MissingWordWidget({
    super.key,
    this.answer,
    this.width,
    this.checked,
  });

  final String? answer;
  final int? width;
  final bool? checked;

  @override
  State<MissingWordWidget> createState() => _MissingWordWidgetState();
}

class _MissingWordWidgetState extends State<MissingWordWidget> {
  late MissingWordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MissingWordModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.checked = widget.checked;
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width?.toDouble(),
      decoration: BoxDecoration(),
      child: TextFormField(
        controller: _model.textController,
        focusNode: _model.textFieldFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.textController',
          Duration(milliseconds: 0),
          () async {
            setState(() {
              _model.text = _model.textController.text;
              _model.checked = false;
            });
          },
        ),
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          hintStyle: FlutterFlowTheme.of(context).bodySmall,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Poppins',
              color: () {
                if ((_model.text == widget.answer) && _model.checked!) {
                  return FlutterFlowTheme.of(context).success;
                } else if (_model.checked!) {
                  return FlutterFlowTheme.of(context).error;
                } else {
                  return FlutterFlowTheme.of(context).primaryText;
                }
              }(),
              fontSize: 20.0,
            ),
        validator: _model.textControllerValidator.asValidator(context),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))
        ],
      ),
    );
  }
}
