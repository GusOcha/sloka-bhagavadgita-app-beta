import 'package:flutter/material.dart';
import '../models/sloka_model.dart';
import '../widgets/sloka_list_item.dart';

class SlokaSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) => [
    IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
  ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, ''),
  );

  @override
  Widget buildResults(BuildContext context) => _buildSearchResults();

  @override
  Widget buildSuggestions(BuildContext context) => 
    query.isEmpty 
      ? const Center(child: Text('Cari sloka berdasarkan teks atau terjemahan'))
      : _buildSearchResults();

  Widget _buildSearchResults() {
    final results = dummySlokas.where((sloka) => 
      sloka.sanskritText.toLowerCase().contains(query.toLowerCase()) ||
      sloka.indonesianTranslation.toLowerCase().contains(query.toLowerCase())
    ).toList();
    
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => SlokaListItem(sloka: results[index]),
    );
  }
}