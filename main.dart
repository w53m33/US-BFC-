
import 'package:flutter/material.dart';

void main() {
  runApp(FayatSaqoorApp());
}

class FayatSaqoorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'فئات صقور برزان',
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        fontFamily: 'Cairo',
      ),
      home: CategoryScreen(),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final List<String> categories = ['U13', 'U14', 'U15', 'U17', 'U19'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('فئات صقور برزان')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('فئة ${categories[index]}'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to player list
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to AddPlayerScreen
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
