
import 'package:flutter/material.dart';

class ViewPlayerScreen extends StatelessWidget {
  final Map<String, String> playerData;

  ViewPlayerScreen({required this.playerData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ملف اللاعب')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('الاسم: ${playerData['name']}'),
            Text('سنة الميلاد: ${playerData['birthYear']}'),
            Text('الرقم الشخصي: ${playerData['idNumber'] ?? ''}'),
            Text('هاتف اللاعب: ${playerData['playerPhone'] ?? ''}'),
            Text('هاتف ولي الأمر: ${playerData['parentPhone'] ?? ''}'),
            Text('الجنسية: ${playerData['nationality'] ?? ''}'),
            Text('المنطقة: ${playerData['region'] ?? ''}'),
            Text('المرحلة الدراسية: ${playerData['schoolLevel'] ?? ''}'),
            Text('المستوى: ${playerData['level'] ?? ''}'),
            Text('مقاس القميص: ${playerData['shirtSize'] ?? ''}'),
            Text('مقاس الحذاء: ${playerData['shoeSize'] ?? ''}'),
          ],
        ),
      ),
    );
  }
}
