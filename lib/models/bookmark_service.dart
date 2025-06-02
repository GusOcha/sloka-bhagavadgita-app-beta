import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'sloka_model.dart';

class BookmarkService {
  static const String _bookmarksKey = 'bookmarked_slokas';
  
  static Future<bool> toggleBookmark(SlokaModel sloka) async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarkedSlokas = await getBookmarkedSlokas();
    
    final slokaIndex = bookmarkedSlokas.indexWhere(
      (s) => s.chapter == sloka.chapter && s.verse == sloka.verse
    );
    
    bool isCurrentlyBookmarked = slokaIndex >= 0;
    
    if (isCurrentlyBookmarked) {
      bookmarkedSlokas.removeAt(slokaIndex);
      sloka.isBookmarked = false;
    } else {
      sloka.isBookmarked = true;
      bookmarkedSlokas.add(sloka);
    }
    
    await saveBookmarkedSlokas(bookmarkedSlokas);
    
    // Update the global list
    final globalIndex = dummySlokas.indexWhere(
      (s) => s.chapter == sloka.chapter && s.verse == sloka.verse
    );
    
    if (globalIndex >= 0) {
      dummySlokas[globalIndex].isBookmarked = sloka.isBookmarked;
    }
    
    return sloka.isBookmarked; // Return the new state
  }
  
  // Rest of the BookmarkService remains the same
  static Future<List<SlokaModel>> getBookmarkedSlokas() async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarksJson = prefs.getStringList(_bookmarksKey) ?? [];
    
    return bookmarksJson
        .map((json) => SlokaModel.fromMap(jsonDecode(json)))
        .toList();
  }
  
  static Future<void> saveBookmarkedSlokas(List<SlokaModel> slokas) async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarksJson = slokas
        .map((sloka) => jsonEncode(sloka.toMap()))
        .toList();
    
    await prefs.setStringList(_bookmarksKey, bookmarksJson);
  }
  
  static Future<bool> isBookmarked(String slokaId) async {
    final bookmarkedSlokas = await getBookmarkedSlokas();
    final parts = slokaId.split('_');
    
    if (parts.length >= 4) {
      final chapter = int.parse(parts[1]);
      final verse = int.parse(parts[3]);
      
      return bookmarkedSlokas.any(
        (sloka) => sloka.chapter == chapter && sloka.verse == verse
      );
    }
    
    return false;
  }
}