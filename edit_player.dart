
import 'package:flutter/material.dart';

class EditPlayerScreen extends StatelessWidget {
  final Map<String, String> playerData;

  EditPlayerScreen({required this.playerData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تعديل بيانات اللاعب')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الاسم: ${playerData['name']}'),
            Text('سنة الميلاد: ${playerData['birthYear']}'),
            Text('المستوى: ${playerData['level']}'),
            // Add editable form fields as needed
          ],
        ),
      ),
    );
  }
}
