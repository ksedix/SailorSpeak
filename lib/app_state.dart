import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _darkModeEnabled =
          prefs.getBool('ff_darkModeEnabled') ?? _darkModeEnabled;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _smcp = [
    jsonDecode(
        '{\"name\":\"Abandon vessel (to)\",\"description\":\"To evacuate crew and passengers from a vessel following a distress\"}'),
    jsonDecode(
        '{\"name\":\"Accommodation ladder\",\"description\":\"Ladder attached to platform at vessel\'s side with flat steps and handrails enabling persons to embark / disembark from water or shore\"}'),
    jsonDecode(
        '{\"name\":\"Adrift\",\"description\":\"Uncontrolled movement at sea under the influence of current, tide or wind\"}'),
    jsonDecode(
        '{\"name\":\"Air draft\",\"description\":\"The height from the waterline to the highest point of the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Assembly station\",\"description\":\"Place on deck, in mess rooms, etc., assigned to crew and passengers where they have to meet according to the muster list when the corresponding alarm is released or announcement made\"}'),
    jsonDecode(
        '{\"name\":\"Backing (of wind)\",\"description\":\"Shift of wind direction in an anticlockwise manner, for example from north to west (opposite of veering)\"}'),
    jsonDecode(
        '{\"name\":\"Beach (to)\",\"description\":\"To run a vessel up on a beach to prevent its sinking in deep water\"}'),
    jsonDecode(
        '{\"name\":\"Berth\",\"description\":\".1 A sea room to be kept for safety around a vessel, rock, platform, etc.\\n.2 The place assigned to a vessel when anchored or lying alongside a pier, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Blast\",\"description\":\"A whistle signal made by the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Blind sector\",\"description\":\"An area which cannot be scanned by the ship\'s radar because it is shielded by parts of the superstructure, masts, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Boarding arrangements\",\"description\":\"All equipment, such as pilot ladder, accommodation ladder, hoist, etc., necessary for a safe transfer of the pilot\"}'),
    jsonDecode(
        '{\"name\":\"Boarding speed\",\"description\":\"The speed of a vessel adjusted to that of a pilot boat at which the pilot can safely embark/disembark\"}'),
    jsonDecode(
        '{\"name\":\"Bob-cat\",\"description\":\"A mini-caterpillar with push-blade used for the careful distribution of loose goods in cargo holds of bulk carriers\"}'),
    jsonDecode(
        '{\"name\":\"Briefing\",\"description\":\"Concise explanatory information to crew and/or passengers\"}'),
    jsonDecode(
        '{\"name\":\"Cable\",\"description\":\".1 Chain connecting a vessel to the anchor(s)\\n.2 Wire or rope primarily used for mooring a ship\\n.3 (Measurement) one hundred fathoms or one tenth of a nautical mile\"}'),
    jsonDecode(
        '{\"name\":\"Capsize (to)\",\"description\":\"To turn over Cardinal buoy A seamark, i.e. a buoy, indicating the north, east, south or west, i.e. the cardinal points from a fixed point such as a wreck, shallow water, banks, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Cardinal buoy\",\"description\":\"A seamark, i.e. a buoy, indicating the north, east, south or west, i.e. the cardinal points from a fixed point such as a wreck, shallow water, banks, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Cardinal points\",\"description\":\"The four main points of the compass: north, east, south and west\"}'),
    jsonDecode(
        '{\"name\":\"Cardinal points\",\"description\":\"The four main points of the compass: north, east, south and west\"}'),
    jsonDecode(
        '{\"name\":\"Check (to)\",\"description\":\".1 To make sure that equipment etc. is in proper condition or that everything is correct and safe\\n.2 To regulate motion of a cable, rope or wire when it is running out too fast\"}'),
    jsonDecode(
        '{\"name\":\"Close-coupled towing\",\"description\":\"A method of towing vessels through polar ice by means of icebreaking tugs with a special stern notch suited to receive and hold the bow of the vessel to be towed\"}'),
    jsonDecode(
        '{\"name\":\"Close up (to)\",\"description\":\"To decrease the distance to the vessel ahead by increasing one’s own speed\"}'),
    jsonDecode(
        '{\"name\":\"Compatibility (of goods)\",\"description\":\"Indicates whether different goods can be safely stowed together in one cargo space or in an adjacent hold.\"}'),
    jsonDecode(
        '{\"name\":\"Vessel constrained by her draft\",\"description\":\"A vessel severely restricted by her draught in her ability to deviate from  the course followed in relation to the available depth and width of navigable water\"}'),
    jsonDecode(
        '{\"name\":\"Convoy\",\"description\":\"A group of vessels which sail together, e.g. through a canal or ice\"}'),
    jsonDecode(
        '{\"name\":\"Course\",\"description\":\"The intended direction of movement of a vessel through the water\"}'),
    jsonDecode(
        '{\"name\":\"Course made good\",\"description\":\"That course which a vessel makes good over ground, after allowing for the effect of currents, tidal streams, and leeway caused by wind and sea\"}'),
    jsonDecode(
        '{\"name\":\"COW\",\"description\":\"Crude Oil Washing: a system of cleaning the cargo tanks by washing them with the cargo of crude oil during discharge\"}'),
    jsonDecode(
        '{\"name\":\"CPA/TCPA\",\"description\":\"Closest Point of Approach/Time to Closest Point of Approach: limit as defined by the observer to give warning when a tracked target or targets will close to within these limits\"}'),
    jsonDecode(
        '{\"name\":\"Crash-stop\",\"description\":\"An emergency reversal operation of the main engine(s) to avoid a collision\"}'),
    jsonDecode(
        '{\"name\":\"Damage control team\",\"description\":\"A group of crew members trained for fighting flooding in the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Datum\",\"description\":\".1 The most probable position of a search target at a given time\\n.2 The plane of reference to which all data as to the depth on charts are referenced\"}'),
    jsonDecode(
        '{\"name\":\"Derelict\",\"description\":\"Vessel still afloat, abandoned at sea\"}'),
    jsonDecode(
        '{\"name\":\"Destination\",\"description\":\"Port for which a vessel is bound\"}'),
    jsonDecode(
        '{\"name\":\"Disabled\",\"description\":\"A vessel damaged or impaired in such a manner as to be incapable of proceeding on its voyage\"}'),
    jsonDecode(
        '{\"name\":\"Disembark (to)\",\"description\":\"To go from a vessel\"}'),
    jsonDecode(
        '{\"name\":\"Distress alert (GMDSS)\",\"description\":\"A radio signal from a distressed vessel automatically directed to an MRCC giving position, identification, course and speed of the vessel as well as the nature of distress\"}'),
    jsonDecode(
        '{\"name\":\"Distress/Urgency traffic\",\"description\":\"Here: the verbal exchange of information on radio from ship to shore and/or ship to ship / aircraft about a distress / urgency situation as defined in the relevant ITU Radio Regulations\"}'),
    jsonDecode(
        '{\"name\":\"Draught (or draft)\",\"description\":\"Depth in water at which a vessel floats\"}'),
    jsonDecode(
        '{\"name\":\"Dragging (of anchor)\",\"description\":\"Moving of an anchor over the sea bottom involuntarily because it is no longer preventing the movement of the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Dredging (of anchor)\",\"description\":\"Moving of an anchor over the sea bottom to control the movement of the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Drifting\",\"description\":\"Being driven along by the wind, tide or current\"}'),
    jsonDecode(
        '{\"name\":\"Drop back (to)\",\"description\":\"To increase the distance from the vessel ahead by reducing one\'s own speed\"}'),
    jsonDecode(
        '{\"name\":\"DSC\",\"description\":\"Digital Selective Calling (in the GMDSS system)\"}'),
    jsonDecode(
        '{\"name\":\"Embark (to)\",\"description\":\"To go aboard a vessel\"}'),
    jsonDecode(
        '{\"name\":\"EPIRB\",\"description\":\"Emergency Position Indicating Radio Beacon\"}'),
    jsonDecode(
        '{\"name\":\"Escape route\",\"description\":\"A clearly marked way in the vessel which has to be followed in case of an emergency\"}'),
    jsonDecode(
        '{\"name\":\"Escort\",\"description\":\"Attending a vessel to be available in case of need, e.g. ice-breaker, tug, etc.\"}'),
    jsonDecode(
        '{\"name\":\"ETA\",\"description\":\"Estimated Time of Arrival\"}'),
    jsonDecode(
        '{\"name\":\"ETD\",\"description\":\"Estimated Time of Departure\"}'),
    jsonDecode('{\"name\":\"Fathom\",\"description\":\"A measure of 6 feet\"}'),
    jsonDecode(
        '{\"name\":\"Fire patrol\",\"description\":\"A member of the watch going around the vessel at certain intervals so that an outbreak of fire may be promptly detected; mandatory in vessels carrying more than 36 passengers\"}'),
    jsonDecode(
        '{\"name\":\"Flooding\",\"description\":\"Major uncontrolled flow of seawater into the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Fire monitor\",\"description\":\"Fixed foam/powder/water cannon shooting fire-extinguishing agents on tank deck, manifold etc.\"}'),
    jsonDecode(
        '{\"name\":\"Foul (of anchor)\",\"description\":\"Anchor has its own cable twisted around it or has fouled an obstruction\"}'),
    jsonDecode(
        '{\"name\":\"Full speed\",\"description\":\"Highest possible speed of a vessel\"}'),
    jsonDecode(
        '{\"name\":\"Fumes\",\"description\":\"Often harmful gas produced by fires, chemicals, fuel, etc.\"}'),
    jsonDecode(
        '{\"name\":\"General emergency alarm\",\"description\":\"A sound signal of seven short blasts and one prolonged blast given with the vessel\'s sound system\"}'),
    jsonDecode(
        '{\"name\":\"Give way\",\"description\":\"To keep out of the way of another vessel\"}'),
    jsonDecode(
        '{\"name\":\"GMDSS\",\"description\":\"Global Maritime Distress and Safety System\"}'),
    jsonDecode(
        '{\"name\":\"(D) GPS\",\"description\":\"(Differential) Global (satellite) Positioning System\"}'),
    jsonDecode(
        '{\"name\":\"Half cardinal points\",\"description\":\"The four main points lying between the cardinal points: north east, south east, south west and north west\"}'),
    jsonDecode(
        '{\"name\":\"Hampered vessel\",\"description\":\"A vessel restricted by her ability to manoeuvre by the nature of her work\"}'),
    jsonDecode(
        '{\"name\":\"Hatchrails\",\"description\":\"Ropes supported by stanchions around an open hatch to prevent persons from falling into a hold\"}'),
    jsonDecode(
        '{\"name\":\"Heading\",\"description\":\"The horizontal direction of the vessel\'s bows at a given moment measured in degrees clockwise from north\"}'),
    jsonDecode(
        '{\"name\":\"Hoist\",\"description\":\"Here: a cable used by helicopters for lifting or lowering persons in a pick-up operation\"}'),
    jsonDecode(
        '{\"name\":\"Icing\",\"description\":\"Coating of ice on an object, e.g. the mast or superstructure of a vessel\"}'),
    jsonDecode(
        '{\"name\":\"IMO Class\",\"description\":\"Group of dangerous or hazardous goods, harmful substances or marine pollutants in sea transport as classified in the International Maritime Dangerous Goods Code (IMDG Code)\"}'),
    jsonDecode(
        '{\"name\":\"Inert (to)\",\"description\":\"To reduce the oxygen in a tank by inert gas to avoid an explosive atmosphere\"}'),
    jsonDecode(
        '{\"name\":\"Initial course\",\"description\":\"Course directed by the OSC or other authorized person to be steered at the beginning of a search\"}'),
    jsonDecode(
        '{\"name\":\"Inoperative\",\"description\":\"Not functioning\"}'),
    jsonDecode(
        '{\"name\":\"Jettison (to) (of cargo)\",\"description\":\"To throw goods overboard in order to lighten the vessel or improve its stability in case of an emergency\"}'),
    jsonDecode(
        '{\"name\":\"Launch (to)\",\"description\":\"To lower, e.g. lifeboats, to the water\"}'),
    jsonDecode(
        '{\"name\":\"Leaking\",\"description\":\"Escape of liquids such as water, oil, etc., out of pipes, boilers, tanks, etc., or a minor inflow of seawater into the vessel due to damage to the hull\"}'),
    jsonDecode(
        '{\"name\":\"Leeward\",\"description\":\"On or towards the sheltered side of a ship; opposite of windward\"}'),
    jsonDecode(
        '{\"name\":\"Leeway\",\"description\":\"Vessel\'s sideways drift leeward of the desired course\"}'),
    jsonDecode(
        '{\"name\":\"Let go (to)\",\"description\":\"To set free, let loose, or cast off (of anchors, lines, etc.)\"}'),
    jsonDecode(
        '{\"name\":\"Lifeboat station\",\"description\":\"Place assigned to crew and passengers to muster before being ordered into the lifeboats\"}'),
    jsonDecode(
        '{\"name\":\"List\",\"description\":\"Here: inclination of the vessel to port side or starboard side\"}'),
    jsonDecode(
        '{\"name\":\"Located\",\"description\":\"In navigational warnings: Position of object confirmed\"}'),
    jsonDecode(
        '{\"name\":\"Make water (to)\",\"description\":\"To have seawater flowing into the vessel due to hull damage, or hatches awash and not properly closed\"}'),
    jsonDecode(
        '{\"name\":\"MMSI\",\"description\":\"Maritime Mobile Service Identity number\"}'),
    jsonDecode(
        '{\"name\":\"Moor (to)\",\"description\":\"To secure a vessel in a particular place by means of wires or ropes made fast to the shore, to anchors, or to anchored mooring buoys, or to ride with both anchors down\"}'),
    jsonDecode(
        '{\"name\":\"MRCC\",\"description\":\"Maritime Rescue Co-ordination Centre: land-based authority responsible for promoting efficient organization of maritime search and rescue and for co-ordinating the conduct of search and rescue operations within a search and rescue region\"}'),
    jsonDecode(
        '{\"name\":\"Muster (to)\",\"description\":\"To assemble crew, passengers or both in a special place for purposes of checking\"}'),
    jsonDecode(
        '{\"name\":\"Muster list\",\"description\":\"List of crew, passengers and others on board and their functions in a distress or drill\"}'),
    jsonDecode(
        '{\"name\":\"Not under command\",\"description\":\"(abbr. NUC): a vessel which through exceptional circumstances is unable to manoeuvre as required by the COLREGs\"}'),
    jsonDecode(
        '{\"name\":\"Obstruction\",\"description\":\"An object such as a wreck, net, etc., which blocks a fairway, route, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Off air\",\"description\":\"When the transmissions of a radio station, etc., have broken down, been switched off or suspended\"}'),
    jsonDecode(
        '{\"name\":\"Off station (of buoys)\",\"description\":\"Not in charted position\"}'),
    jsonDecode(
        '{\"name\":\"Oil clearance\",\"description\":\"Oil skimming from the surface of the water\"}'),
    jsonDecode(
        '{\"name\":\"Operational\",\"description\":\"Ready for immediate use\"}'),
    jsonDecode(
        '{\"name\":\"Ordnance exercise\",\"description\":\"Naval firing practice\"}'),
    jsonDecode(
        '{\"name\":\"OSC\",\"description\":\"On-Scene Co-ordinator: A person designed to co-ordinate search and rescue operations within a specified area\"}'),
    jsonDecode(
        '{\"name\":\"Overflow\",\"description\":\"Escape of oil or liquid from a tank because of a twofold condition as a result of overflowing, thermal expansion, change in vessel trim or vessel movement\"}'),
    jsonDecode(
        '{\"name\":\"Polluter\",\"description\":\"A vessel emitting harmful substances into the air or spilling oil into the sea\"}'),
    jsonDecode(
        '{\"name\":\"Preventers\",\"description\":\"Ropes or wires attached to derricks to prevent them from swinging during cargo handling operations\"}'),
    jsonDecode(
        '{\"name\":\"Proceed (to)\",\"description\":\"To sail or head for a certain position or to continue with the voyage\"}'),
    jsonDecode(
        '{\"name\":\"PA-system\",\"description\":\"Public address system: loudspeakers in the vessel\'s cabins, mess rooms, etc., and on deck through which important information can be broadcast from a central point, mostly from the navigation bridge\"}'),
    jsonDecode(
        '{\"name\":\"Recover (to)\",\"description\":\"Here: to pick up shipwrecked persons\"}'),
    jsonDecode(
        '{\"name\":\"Refloat (to)\",\"description\":\"To pull a vessel off after grounding; to set afloat again\"}'),
    jsonDecode(
        '{\"name\":\"Rendez-vous\",\"description\":\"An appointment between vessels normally made on radio to meet in a certain area or position\"}'),
    jsonDecode(
        '{\"name\":\"Reported\",\"description\":\"In navigational warnings: position of object unconfirmed\"}'),
    jsonDecode(
        '{\"name\":\"Restricted area\",\"description\":\"A deck, space, area, etc., in vessels where, for safety reasons, entry is only permitted for authorized crew members\"}'),
    jsonDecode(
        '{\"name\":\"Resume (to)\",\"description\":\"Here: to re-start a voyage, service or search\"}'),
    jsonDecode(
        '{\"name\":\"Retreat signal\",\"description\":\"Sound, visual or other signal to a team ordering it to return to its base\"}'),
    jsonDecode(
        '{\"name\":\"Rig move\",\"description\":\"The movement of an oil rig, drilling platform, etc., from one position to another\"}'),
    jsonDecode(
        '{\"name\":\"Roll call\",\"description\":\"The act of checking how many passengers and crew members are present, e.g. at assembly stations, by reading aloud a list of their names\"}'),
    jsonDecode(
        '{\"name\":\"Safe speed\",\"description\":\"That speed of a vessel allowing time for effective action to be taken under prevailing circumstances and conditions to avoid a collision and to be stopped within an appropriate distance\"}'),
    jsonDecode(
        '{\"name\":\"SWL\",\"description\":\"Safe working load: maximum working load of lifting equipment that should not be exceeded\"}'),
    jsonDecode(
        '{\"name\":\"Safe working pressure\",\"description\":\"The maximum permissible pressure in cargo hoses\"}'),
    jsonDecode('{\"name\":\"SAR\",\"description\":\"Search and Rescue\"}'),
    jsonDecode(
        '{\"name\":\"SART\",\"description\":\"Search and Rescue Transponder\"}'),
    jsonDecode(
        '{\"name\":\"Scene\",\"description\":\"The area or location where the event, e.g. an accident, has happened\"}'),
    jsonDecode(
        '{\"name\":\"Search pattern\",\"description\":\"A pattern according to which vessels and/or aircraft may conduct a co-ordinated search (the IMOSAR offers seven search patterns)\"}'),
    jsonDecode(
        '{\"name\":\"Search speed\",\"description\":\"The speed of searching vessels directed by the OSC\"}'),
    jsonDecode(
        '{\"name\":\"Seamark\",\"description\":\"A navigational aid placed to act as a beacon or warning\"}'),
    jsonDecode(
        '{\"name\":\"Segregation(of goods)\",\"description\":\"Separation of goods which for different reasons must not be stowed together\"}'),
    jsonDecode(
        '{\"name\":\"Shackle\",\"description\":\".1 Length of chain cable measuring 15 fathoms\\n.2 U-shaped link closed with a pin used for connecting purposes\"}'),
    jsonDecode(
        '{\"name\":\"Shifting cargo\",\"description\":\"Transverse movement of cargo, especially bulk cargo, caused by rolling or a heavy list\"}'),
    jsonDecode(
        '{\"name\":\"Slings\",\"description\":\"Ropes, nets, and any other means for handling general cargoes\"}'),
    jsonDecode(
        '{\"name\":\"Speed of advance\",\"description\":\"The speed at which a storm centre moves\"}'),
    jsonDecode(
        '{\"name\":\"Spill\",\"description\":\"The accidental escape of oil, etc., from a vessel, container, etc., into the sea\"}'),
    jsonDecode(
        '{\"name\":\"Spill control gear\",\"description\":\"Anti-pollution equipment for combating accidental spills of oils or chemicals\"}'),
    jsonDecode(
        '{\"name\":\"Elongated spreader\",\"description\":\"Here: step of a pilot ladder which prevents the ladder from twisting\"}'),
    jsonDecode(
        '{\"name\":\"Stand by (to)\",\"description\":\"To be in readiness or prepared to execute an order; to be readily available\"}'),
    jsonDecode(
        '{\"name\":\"Standing orders\",\"description\":\"Orders of the Master to the officer of the watch which he/she must comply with\"}'),
    jsonDecode(
        '{\"name\":\"Stand on (to)\",\"description\":\"To maintain course and speed\"}'),
    jsonDecode(
        '{\"name\":\"Station\",\"description\":\"The allotted place or the duties of each person on board\"}'),
    jsonDecode(
        '{\"name\":\"Stripping\",\"description\":\"Final pumping of tank\'s residues\"}'),
    jsonDecode(
        '{\"name\":\"Survivor\",\"description\":\"A person who continues to live in spite of being in an extremely dangerous situation, e.g. a shipping disaster.\"}'),
    jsonDecode(
        '{\"name\":\"Take off (to)\",\"description\":\"To lift off from a vessel\'s deck (helicopter)\"}'),
    jsonDecode(
        '{\"name\":\"Target\",\"description\":\"The echo generated, e.g. by a vessel, on a radar screen\"}'),
    jsonDecode(
        '{\"name\":\"Tension winch\",\"description\":\"A winch which applies tension to mooring lines to keep them tight\"}'),
    jsonDecode(
        '{\"name\":\"TEU\",\"description\":\"Twenty Foot Equivalent Unit (standard container dimension)\"}'),
    jsonDecode(
        '{\"name\":\"Track\",\"description\":\"The path followed, or to be followed, between one position and another\"}'),
    jsonDecode(
        '{\"name\":\"Transit\",\"description\":\"Here: the passage of a vessel through a canal, fairway, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Transit speed\",\"description\":\"Speed of a vessel required for passage through a canal, fairway, etc.\"}'),
    jsonDecode(
        '{\"name\":\"Transhipment (of cargo)\",\"description\":\"Here: the transfer of goods from one vessel to another outside harbours\"}'),
    jsonDecode(
        '{\"name\":\"Underway\",\"description\":\"Describes a vessel which is not at anchor, or made fast to the shore, or aground\"}'),
    jsonDecode(
        '{\"name\":\"Union purchase\",\"description\":\"A method of cargo handling by combining two derricks, one of which is fixed over the hatch, the other over the ship\'s side\"}'),
    jsonDecode(
        '{\"name\":\"Unlit\",\"description\":\"When the light of a buoy or a lighthouse are inoperative\"}'),
    jsonDecode(
        '{\"name\":\"UTC\",\"description\":\"Universal Time Co-ordinated (GMT)\"}'),
    jsonDecode(
        '{\"name\":\"Variable (of winds)\",\"description\":\"A wind that is constantly changing speed and direction\"}'),
    jsonDecode(
        '{\"name\":\"Veering (of winds)\",\"description\":\"Clockwise change in the direction of the wind; opposite of backing\"}'),
    jsonDecode(
        '{\"name\":\"Veer out (to)(of anchors)\",\"description\":\"To let out a greater length of cable\"}'),
    jsonDecode(
        '{\"name\":\"VHF\",\"description\":\"Very High Frequency (30-300 MHz)\"}'),
    jsonDecode(
        '{\"name\":\"Walk out (to) (of anchors)\",\"description\":\"To reverse the action of a windlass to lower the anchor until it is clear of the hawse pipe and ready for dropping\"}'),
    jsonDecode(
        '{\"name\":\"Walk back (to)\",\"description\":\"To reverse the action of a windlass to ease the cable (of anchors)\"}'),
    jsonDecode(
        '{\"name\":\"Waypoint\",\"description\":\"A position a vessel has to pass or at which she has to alter course according to her voyage plan\"}'),
    jsonDecode(
        '{\"name\":\"Windward\",\"description\":\"The general direction from which the wind blows; opposite of leeward\"}'),
    jsonDecode(
        '{\"name\":\"Wreck\",\"description\":\"A vessel which has been destroyed, sunk or abandoned at sea\"}'),
    jsonDecode(
        '{\"name\":\"Stand clear (to)\",\"description\":\"Here: to keep a boat away from the vessel\"}'),
    jsonDecode(
        '{\"name\":\"Foul (of propeller)\",\"description\":\"A line, wire, net, etc., is wound round the propeller\"}')
  ];
  List<dynamic> get smcp => _smcp;
  set smcp(List<dynamic> _value) {
    _smcp = _value;
  }

  void addToSmcp(dynamic _value) {
    _smcp.add(_value);
  }

  void removeFromSmcp(dynamic _value) {
    _smcp.remove(_value);
  }

  void removeAtIndexFromSmcp(int _index) {
    _smcp.removeAt(_index);
  }

  void updateSmcpAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _smcp[_index] = updateFn(_smcp[_index]);
  }

  void insertAtIndexInSmcp(int _index, dynamic _value) {
    _smcp.insert(_index, _value);
  }

  List<String> _quizQuestions = [
    'What is the word used to announce a distress message?',
    'What is the word used to announce an urgency message?',
    'What is the word used to announce a security message?'
  ];
  List<String> get quizQuestions => _quizQuestions;
  set quizQuestions(List<String> _value) {
    _quizQuestions = _value;
  }

  void addToQuizQuestions(String _value) {
    _quizQuestions.add(_value);
  }

  void removeFromQuizQuestions(String _value) {
    _quizQuestions.remove(_value);
  }

  void removeAtIndexFromQuizQuestions(int _index) {
    _quizQuestions.removeAt(_index);
  }

  void updateQuizQuestionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _quizQuestions[_index] = updateFn(_quizQuestions[_index]);
  }

  void insertAtIndexInQuizQuestions(int _index, String _value) {
    _quizQuestions.insert(_index, _value);
  }

  List<String> _questionOneOptions = ['Mayday', 'Help', 'Alert', 'Attention'];
  List<String> get questionOneOptions => _questionOneOptions;
  set questionOneOptions(List<String> _value) {
    _questionOneOptions = _value;
  }

  void addToQuestionOneOptions(String _value) {
    _questionOneOptions.add(_value);
  }

  void removeFromQuestionOneOptions(String _value) {
    _questionOneOptions.remove(_value);
  }

  void removeAtIndexFromQuestionOneOptions(int _index) {
    _questionOneOptions.removeAt(_index);
  }

  void updateQuestionOneOptionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _questionOneOptions[_index] = updateFn(_questionOneOptions[_index]);
  }

  void insertAtIndexInQuestionOneOptions(int _index, String _value) {
    _questionOneOptions.insert(_index, _value);
  }

  List<String> _questionTwoOptions = ['1', '2', '4', '3'];
  List<String> get questionTwoOptions => _questionTwoOptions;
  set questionTwoOptions(List<String> _value) {
    _questionTwoOptions = _value;
  }

  void addToQuestionTwoOptions(String _value) {
    _questionTwoOptions.add(_value);
  }

  void removeFromQuestionTwoOptions(String _value) {
    _questionTwoOptions.remove(_value);
  }

  void removeAtIndexFromQuestionTwoOptions(int _index) {
    _questionTwoOptions.removeAt(_index);
  }

  void updateQuestionTwoOptionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _questionTwoOptions[_index] = updateFn(_questionTwoOptions[_index]);
  }

  void insertAtIndexInQuestionTwoOptions(int _index, String _value) {
    _questionTwoOptions.insert(_index, _value);
  }

  List<String> _questionThreeOptions = [
    'Pan Pan',
    'Urgency',
    'Help',
    'Capsize'
  ];
  List<String> get questionThreeOptions => _questionThreeOptions;
  set questionThreeOptions(List<String> _value) {
    _questionThreeOptions = _value;
  }

  void addToQuestionThreeOptions(String _value) {
    _questionThreeOptions.add(_value);
  }

  void removeFromQuestionThreeOptions(String _value) {
    _questionThreeOptions.remove(_value);
  }

  void removeAtIndexFromQuestionThreeOptions(int _index) {
    _questionThreeOptions.removeAt(_index);
  }

  void updateQuestionThreeOptionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _questionThreeOptions[_index] = updateFn(_questionThreeOptions[_index]);
  }

  void insertAtIndexInQuestionThreeOptions(int _index, String _value) {
    _questionThreeOptions.insert(_index, _value);
  }

  List<String> _questionFourOptions = [
    'Wait',
    'Observe',
    'Instruction',
    'Stand by'
  ];
  List<String> get questionFourOptions => _questionFourOptions;
  set questionFourOptions(List<String> _value) {
    _questionFourOptions = _value;
  }

  void addToQuestionFourOptions(String _value) {
    _questionFourOptions.add(_value);
  }

  void removeFromQuestionFourOptions(String _value) {
    _questionFourOptions.remove(_value);
  }

  void removeAtIndexFromQuestionFourOptions(int _index) {
    _questionFourOptions.removeAt(_index);
  }

  void updateQuestionFourOptionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _questionFourOptions[_index] = updateFn(_questionFourOptions[_index]);
  }

  void insertAtIndexInQuestionFourOptions(int _index, String _value) {
    _questionFourOptions.insert(_index, _value);
  }

  List<String> _shipParts = [
    'Funnel',
    'Stern',
    'Propeller',
    'Hull',
    'Anchor',
    'Bulbous Bow',
    'Bow',
    'Deck',
    'Superstructure'
  ];
  List<String> get shipParts => _shipParts;
  set shipParts(List<String> _value) {
    _shipParts = _value;
  }

  void addToShipParts(String _value) {
    _shipParts.add(_value);
  }

  void removeFromShipParts(String _value) {
    _shipParts.remove(_value);
  }

  void removeAtIndexFromShipParts(int _index) {
    _shipParts.removeAt(_index);
  }

  void updateShipPartsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _shipParts[_index] = updateFn(_shipParts[_index]);
  }

  void insertAtIndexInShipParts(int _index, String _value) {
    _shipParts.insert(_index, _value);
  }

  List<dynamic> _generalTerms = [
    jsonDecode(
        '{\"name\":\"Abandon vessel (to)\",\"path\":\"abandon_vessel.wav\"}'),
    jsonDecode(
        '{\"name\":\"Accommodation ladder\",\"path\":\"accommodation_ladder.wav\"}'),
    jsonDecode('{\"name\":\"Adrift\",\"path\":\"adrift.wav\"}'),
    jsonDecode('{\"name\":\"Air draft\",\"path\":\"air_draft.wav\"}'),
    jsonDecode(
        '{\"name\":\"Assembly station\",\"path\":\"assembly_station.wav\"}'),
    jsonDecode('{\"name\":\"Backing (of wind)\",\"path\":\"backing.wav\"}'),
    jsonDecode('{\"name\":\"Beach (to)\",\"path\":\"beach.wav\"}'),
    jsonDecode('{\"name\":\"Berth\",\"path\":\"berth.wav\"}'),
    jsonDecode('{\"name\":\"Blast\",\"path\":\"blast.wav\"}'),
    jsonDecode('{\"name\":\"Blind sector\",\"path\":\"blind_sector.wav\"}'),
    jsonDecode(
        '{\"name\":\"Boarding arrangements\",\"path\":\"boarding_arrangements.wav\"}'),
    jsonDecode('{\"name\":\"Boarding speed\",\"path\":\"boarding_speed.wav\"}')
  ];
  List<dynamic> get generalTerms => _generalTerms;
  set generalTerms(List<dynamic> _value) {
    _generalTerms = _value;
  }

  void addToGeneralTerms(dynamic _value) {
    _generalTerms.add(_value);
  }

  void removeFromGeneralTerms(dynamic _value) {
    _generalTerms.remove(_value);
  }

  void removeAtIndexFromGeneralTerms(int _index) {
    _generalTerms.removeAt(_index);
  }

  void updateGeneralTermsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _generalTerms[_index] = updateFn(_generalTerms[_index]);
  }

  void insertAtIndexInGeneralTerms(int _index, dynamic _value) {
    _generalTerms.insert(_index, _value);
  }

  List<dynamic> _letters = [
    jsonDecode(
        '{\"name\":\"A\",\"path\":\"a.wav\",\"pronunciation\":\"Alfa\"}'),
    jsonDecode(
        '{\"name\":\"B\",\"path\":\"b.wav\",\"pronunciation\":\"Bravo\"}'),
    jsonDecode(
        '{\"name\":\"C\",\"path\":\"c.wav\",\"pronunciation\":\"Charlie\"}'),
    jsonDecode(
        '{\"name\":\"D\",\"path\":\"d.wav\",\"pronunciation\":\"Delta\"}'),
    jsonDecode(
        '{\"name\":\"E\",\"path\":\"e.wav\",\"pronunciation\":\"Echo\"}'),
    jsonDecode(
        '{\"name\":\"F\",\"path\":\"f.wav\",\"pronunciation\":\"Foxtrot\"}'),
    jsonDecode(
        '{\"name\":\"G\",\"path\":\"g.wav\",\"pronunciation\":\"Golf\"}'),
    jsonDecode(
        '{\"name\":\"H\",\"path\":\"h.wav\",\"pronunciation\":\"Hotel\"}'),
    jsonDecode(
        '{\"name\":\"I\",\"path\":\"i.wav\",\"pronunciation\":\"India\"}'),
    jsonDecode(
        '{\"name\":\"J\",\"path\":\"j.wav\",\"pronunciation\":\"Juliet\"}'),
    jsonDecode(
        '{\"name\":\"K\",\"path\":\"k.wav\",\"pronunciation\":\"Kilo\"}'),
    jsonDecode(
        '{\"name\":\"L\",\"path\":\"l.wav\",\"pronunciation\":\"Lima\"}'),
    jsonDecode(
        '{\"name\":\"M\",\"path\":\"m.wav\",\"pronunciation\":\"Mike\"}'),
    jsonDecode(
        '{\"name\":\"N\",\"path\":\"n.wav\",\"pronunciation\":\"November\"}'),
    jsonDecode(
        '{\"name\":\"O\",\"path\":\"o.wav\",\"pronunciation\":\"Oscar\"}'),
    jsonDecode(
        '{\"name\":\"P\",\"path\":\"p.wav\",\"pronunciation\":\"Papa\"}'),
    jsonDecode(
        '{\"name\":\"Q\",\"path\":\"q.wav\",\"pronunciation\":\"Quebec\"}'),
    jsonDecode(
        '{\"name\":\"R\",\"path\":\"r.wav\",\"pronunciation\":\"Romeo\"}'),
    jsonDecode(
        '{\"name\":\"S\",\"path\":\"s.wav\",\"pronunciation\":\"Sierra\"}'),
    jsonDecode(
        '{\"name\":\"T\",\"path\":\"t.wav\",\"pronunciation\":\"Tango\"}'),
    jsonDecode(
        '{\"name\":\"U\",\"path\":\"u.wav\",\"pronunciation\":\"Uniform\"}'),
    jsonDecode(
        '{\"name\":\"V\",\"path\":\"v.wav\",\"pronunciation\":\"Victor\"}'),
    jsonDecode(
        '{\"name\":\"W\",\"path\":\"w.wav\",\"pronunciation\":\"Whisky\"}'),
    jsonDecode(
        '{\"name\":\"X\",\"path\":\"x.wav\",\"pronunciation\":\"X-ray\"}'),
    jsonDecode(
        '{\"name\":\"Y\",\"path\":\"y.wav\",\"pronunciation\":\"Yankee\"}'),
    jsonDecode('{\"name\":\"Z\",\"path\":\"z.wav\",\"pronunciation\":\"Zulu\"}')
  ];
  List<dynamic> get letters => _letters;
  set letters(List<dynamic> _value) {
    _letters = _value;
  }

  void addToLetters(dynamic _value) {
    _letters.add(_value);
  }

  void removeFromLetters(dynamic _value) {
    _letters.remove(_value);
  }

  void removeAtIndexFromLetters(int _index) {
    _letters.removeAt(_index);
  }

  void updateLettersAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _letters[_index] = updateFn(_letters[_index]);
  }

  void insertAtIndexInLetters(int _index, dynamic _value) {
    _letters.insert(_index, _value);
  }

  List<dynamic> _digits = [
    jsonDecode(
        '{\"name\":\"0\",\"path\":\"0.wav\",\"pronunciation\":\"Zero\"}'),
    jsonDecode(
        '{\"name\":\"1\",\"path\":\"1.wav\",\"pronunciation\":\"One (Wun)\"}'),
    jsonDecode(
        '{\"name\":\"2\",\"path\":\"2.wav\",\"pronunciation\":\"Two (Too)\"}'),
    jsonDecode(
        '{\"name\":\"3\",\"path\":\"3.wav\",\"pronunciation\":\"Three (Tree)\"}'),
    jsonDecode(
        '{\"name\":\"4\",\"path\":\"4.wav\",\"pronunciation\":\"Four (Fower)\"}'),
    jsonDecode(
        '{\"name\":\"5\",\"path\":\"5.wav\",\"pronunciation\":\"Five (Fife)\"}'),
    jsonDecode('{\"name\":\"6\",\"path\":\"6.wav\",\"pronunciation\":\"Six\"}'),
    jsonDecode(
        '{\"name\":\"7\",\"path\":\"7.wav\",\"pronunciation\":\"Seven\"}'),
    jsonDecode(
        '{\"name\":\"8\",\"path\":\"8.wav\",\"pronunciation\":\"Eight (Ait)\"}'),
    jsonDecode(
        '{\"name\":\"9\",\"path\":\"9.wav\",\"pronunciation\":\"Nine (Niner)\"}')
  ];
  List<dynamic> get digits => _digits;
  set digits(List<dynamic> _value) {
    _digits = _value;
  }

  void addToDigits(dynamic _value) {
    _digits.add(_value);
  }

  void removeFromDigits(dynamic _value) {
    _digits.remove(_value);
  }

  void removeAtIndexFromDigits(int _index) {
    _digits.removeAt(_index);
  }

  void updateDigitsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _digits[_index] = updateFn(_digits[_index]);
  }

  void insertAtIndexInDigits(int _index, dynamic _value) {
    _digits.insert(_index, _value);
  }

  bool _darkModeEnabled = false;
  bool get darkModeEnabled => _darkModeEnabled;
  set darkModeEnabled(bool _value) {
    _darkModeEnabled = _value;
    prefs.setBool('ff_darkModeEnabled', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
