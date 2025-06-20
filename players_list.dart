
import 'package:flutter/material.dart';

class PlayersListScreen extends StatelessWidget {
  final String category;

  PlayersListScreen({required this.category});

  final List<Map<String, String>> dummyPlayers = [
    {
      'name': 'أحمد محمد علي',
      'birthYear': '2011',
      'level': 'أساسي',
    },
    {
      'name': 'سعيد عبد الله حسن',
      'birthYear': '2010',
      'level': 'احتياط',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اللاعبين - $category')),
      body: ListView.builder(
        itemCount: dummyPlayers.length,
        itemBuilder: (context, index) {
          final player = dummyPlayers[index];
          return Card(
            child: ListTile(
              title: Text(player['name'] ?? ''),
              subtitle: Text('سنة الميلاد: ${player['birthYear']} - المستوى: ${player['level']}'),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navigate to edit screen
              },
            ),
          );
        },
      ),
    );
  }
}
