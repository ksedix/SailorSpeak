// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class MissingWordGame extends StatefulWidget {
  MissingWordGame({
    Key? key,
    this.width,
    this.height,
    this.checked,
  }) : super(key: key);

  final double? width;
  final double? height;
  bool? checked;

  final answer1 = "bow";
  final answer2 = "main deck";
  final answer3 = "geared vessel";
  final answer4 = "lifting capacity";
  final answer5 = "forecastle";
  final answer6 = "superstructure";
  final answer7 = "corrosion";
  final answer8 = "crew";
  final answer9 = "stern";

  @override
  _MissingWordGameState createState() => _MissingWordGameState();
}

class _MissingWordGameState extends State<MissingWordGame> {
  final text1 = TextEditingController();
  final text2 = TextEditingController();
  final text3 = TextEditingController();
  final text4 = TextEditingController();
  final text5 = TextEditingController();
  final text6 = TextEditingController();
  final text7 = TextEditingController();
  final text8 = TextEditingController();
  final TextEditingController text9 = TextEditingController();
  bool answer1Correct = false;
  bool answer2Correct = false;
  bool answer3Correct = false;
  bool answer4Correct = false;
  bool answer5Correct = false;
  bool answer6Correct = false;
  bool answer7Correct = false;
  bool answer8Correct = false;
  bool answer9Correct = false;
  int nCorrect = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                    text: '1. The front part of the ship is called the ',
                  ),
                  WidgetSpan(
                      child: SizedBox(
                    width: 50,
                    child: TextField(
                      enabled: (answer1Correct) ? false : true,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      controller: text1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer1Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text:
                          '2. The deck that stretches along the ship is called the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 100,
                    child: TextField(
                      enabled: (answer2Correct) ? false : true,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      controller: text2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer2Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        isDense: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text:
                          '3. A vessel that carries its own loading equipment is a '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 120,
                    child: TextField(
                      enabled: (answer3Correct) ? false : true,
                      controller: text3,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer3Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(text: '4. What is the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 120,
                    child: TextField(
                      enabled: (answer4Correct) ? false : true,
                      controller: text4,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer4Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  )),
                  const TextSpan(text: ' of the huge cranes on board? 37 tons'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text: '5. The deck at the fore of the ship is the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 90,
                    child: TextField(
                      enabled: (answer5Correct) ? false : true,
                      controller: text5,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer5Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text:
                          '6. All the structures above the main deck are called the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 120,
                    child: TextField(
                      enabled: (answer6Correct) ? false : true,
                      controller: text6,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer6Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(text: '7. We call it '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 80,
                    child: TextField(
                      enabled: (answer7Correct) ? false : true,
                      controller: text7,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer7Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  )),
                  const TextSpan(
                      text:
                          ' when steel becomes rusty and damaged from water and weather'),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text: '8. All the men working on a ship is the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 50,
                    child: TextField(
                      enabled: (answer8Correct) ? false : true,
                      controller: text8,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer8Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                children: [
                  const TextSpan(
                      text: '9. The aft end of a ship is called the '),
                  WidgetSpan(
                      child: SizedBox(
                    width: 50,
                    child: TextField(
                      enabled: (answer9Correct) ? false : true,
                      controller: text9,
                      onChanged: (value) => setState(() {
                        widget.checked = false;
                      }),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: answer9Correct
                                ? Colors.green
                                : ((widget.checked ?? false)
                                    ? Colors.red
                                    : FlutterFlowTheme.of(context).primaryText),
                          ),
                      decoration: const InputDecoration(
                        isDense: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        contentPadding: EdgeInsets.only(bottom: 5),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  fixedSize: const Size(190, 65),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  backgroundColor: FlutterFlowTheme.of(context).success,
                  elevation: 2,
                ),
                onPressed: () => setState(() {
                  nCorrect = 0;
                  widget.checked = true;
                  if (text1.text == widget.answer1) {
                    answer1Correct = true;
                    nCorrect += 1;
                  }
                  if (text2.text == widget.answer2) {
                    answer2Correct = true;
                    nCorrect += 1;
                  }
                  if (text3.text == widget.answer3) {
                    answer3Correct = true;
                    nCorrect += 1;
                  }
                  if (text4.text == widget.answer4) {
                    answer4Correct = true;
                    nCorrect += 1;
                  }
                  if (text5.text == widget.answer5) {
                    answer5Correct = true;
                    nCorrect += 1;
                  }
                  if (text6.text == widget.answer6) {
                    answer6Correct = true;
                    nCorrect += 1;
                  }
                  if (text7.text == widget.answer7) {
                    answer7Correct = true;
                    nCorrect += 1;
                  }
                  if (text8.text == widget.answer8) {
                    answer8Correct = true;
                    nCorrect += 1;
                  }
                  if (text9.text == widget.answer9) {
                    answer9Correct = true;
                    nCorrect += 1;
                  }
                }),
                child: Text(
                  "Check",
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 24,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("$nCorrect out of 9 correct",
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}
