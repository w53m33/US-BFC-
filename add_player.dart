
import 'package:flutter/material.dart';

class AddPlayerScreen extends StatefulWidget {
  @override
  _AddPlayerScreenState createState() => _AddPlayerScreenState();
}

class _AddPlayerScreenState extends State<AddPlayerScreen> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '', birthYear = '', idNumber = '', playerPhone = '', parentPhone = '';
  String nationality = '', region = '', schoolLevel = '', level = '', shirtSize = '', shoeSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إضافة لاعب')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'الاسم الثلاثي'), onChanged: (val) => fullName = val),
              TextFormField(decoration: InputDecoration(labelText: 'سنة الميلاد'), onChanged: (val) => birthYear = val),
              TextFormField(decoration: InputDecoration(labelText: 'الرقم الشخصي'), onChanged: (val) => idNumber = val),
              TextFormField(decoration: InputDecoration(labelText: 'هاتف اللاعب'), onChanged: (val) => playerPhone = val),
              TextFormField(decoration: InputDecoration(labelText: 'هاتف ولي الأمر'), onChanged: (val) => parentPhone = val),
              TextFormField(decoration: InputDecoration(labelText: 'الجنسية'), onChanged: (val) => nationality = val),
              TextFormField(decoration: InputDecoration(labelText: 'المنطقة'), onChanged: (val) => region = val),
              TextFormField(decoration: InputDecoration(labelText: 'المرحلة الدراسية'), onChanged: (val) => schoolLevel = val),
              TextFormField(decoration: InputDecoration(labelText: 'المستوى'), onChanged: (val) => level = val),
              TextFormField(decoration: InputDecoration(labelText: 'مقاس القميص'), onChanged: (val) => shirtSize = val),
              TextFormField(decoration: InputDecoration(labelText: 'مقاس الحذاء'), onChanged: (val) => shoeSize = val),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('حفظ'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save data logic here
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('تم حفظ البيانات')));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
