import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextSizeProvider with ChangeNotifier {
  double _fontSize = 16.0;
  final double minSize = 12.0;
  final double maxSize = 24.0;

  TextSizeProvider() {
    _loadSavedFontSize();
  }

  double get fontSize => _fontSize;

  Future<void> _loadSavedFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    _fontSize = prefs.getDouble('fontSize') ?? 16.0;
    notifyListeners();
  }

  Future<void> setFontSize(double size) async {
    _fontSize = size;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', size);
    notifyListeners();
  }
}