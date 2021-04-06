import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  AssetImage img = AssetImage('assets/profile.jpg');
  List<String> industy = [
    'Software Engineering',
    'Human Resource',
    'Marketing'
  ];
  String dsl = 'Software Engineering';
  void dslChange(String s) {
    dsl = s;
    notifyListeners();
  }

  //Personal
  Map<String, dynamic> personal = {
    'dob': '07 October 2000',
    'email': 'samiriddhodas.das8@gmail.com',
    'loc': 'Kolkata, West Bengal',
  };
  void change({String s, String key}) {
    personal[key] = s;
    notifyListeners();
  }
  //Education

  Map<String, dynamic> education = {
    'B-Tech in Software Engineering': 'SRM Institute of Science and Technology',
    'Standard': 'Second Year',
    'Location': 'Channai'
  };
  Map<String, dynamic> experience = {
    'B-Tech in Software Engineering': 'SRM Institute of Science and Technology',
  };
}
