import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

bool startsWith(
  String searchTerm,
  String searchFor,
) {
  if (searchTerm.isEmpty) {
    return true;
  } else {
    return searchFor.toLowerCase().startsWith(searchTerm.toLowerCase());
  }
}

List<String> shuffleOptions(List<String> questionOptions) {
  questionOptions.shuffle();
  return questionOptions;
}

double? indexToProgress(int? index) {
  switch (index) {
    case 0:
      return 0;
    case 1:
      return 0.25;
    case 2:
      return 0.5;
    case 3:
      return 0.75;
    case 4:
      return 1;
  }
}

int? incrementnCorrect(bool correctOptionSelected) {
  if (correctOptionSelected) {
    return 1;
  } else {
    return 0;
  }
}
